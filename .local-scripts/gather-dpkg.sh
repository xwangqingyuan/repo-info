#!/bin/bash
set -e

IFS=$'\n'
rawPackages=( $(dpkg-query --show --showformat='${db:Status-Abbrev} ${source:Package}=${source:Version} ${binary:Package}=${Version}\n' 2>/dev/null) )
unset IFS

declare -A packages=()
for rawPackage in "${rawPackages[@]}"; do
	rawPackage=( $rawPackage )
	stat="${rawPackage[0]}"
	case "$stat" in
		i?|h?)
			# "install" or "hold"
			;;
		*)
			# skip "unknown", "remove", "purge"
			continue
			;;
	esac
	src="${rawPackage[1]}"
	bin="${rawPackage[2]}"
	[ -z "${packages[$src]}" ] || packages[$src]+=' '
	packages[$src]+="$bin"
done

if [ "${#packages[@]}" -eq 0 ]; then
	# not Debian-based
	exit 1
fi

IFS=$'\n'
sortedSources=( $(echo "${!packages[*]}" | sort) )
unset IFS

echo
echo '## `dpkg` (`.deb`-based packages)'

# prints "$2$1$3$1...$N"
join() {
	local sep="$1"; shift
	local out; printf -v out "${sep//%/%%}%s" "$@"
	echo "${out#$sep}"
}

for src in "${sortedSources[@]}"; do
	echo
	echo '### `dpkg` source package: `'"$src"'`'
	echo
	echo 'Binary Packages:'
	echo
	for bin in ${packages[$src]}; do
		echo '- `'"$bin"'`'
	done

	# parse /usr/share/doc/BIN/copyright
	licenses=()
	licenseFiles=()
	for bin in ${packages[$src]}; do
		# https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
		# http://dep.debian.net/deps/dep5/
		binPkg="${bin%%=*}"
		binPkgOnly="${binPkg%%:*}"
		f=
		for try in \
			"/usr/share/doc/$bin/copyright" \
			"/usr/share/doc/$binPkg/copyright" \
			"/usr/share/doc/$binPkgOnly/copyright" \
		; do
			if [ -f "$try" ]; then
				f="$try"
				break
			fi
		done
		if [ -z "$f" ]; then
			echo >&2
			echo >&2 "**WARNING:** '/usr/share/doc/$binPkgOnly/copyright' is missing!"
			echo >&2
			continue
		fi
		IFS=$'\n'
		licenses+=( $(awk -F ':[ \t]+' '$1 == "License" && NF > 1 { gsub(/^License:[ \t]+/, ""); print }' "$f") )
		licenses+=( $(grep -oE '/usr/share/common-licenses/[0-9a-zA-Z_.+-]+' "$f" | cut -d/ -f5-) )
		unset IFS
		licenseFiles+=( "$f" )
	done
	if [ "${#licenses[@]}" -gt 0 ]; then
		IFS=$'\n'
		licenses=( $(echo "${licenses[*]}" | sed -r -e 's/ (and|or) /\n/g' -e 's/[.]+$//' | sort -u) )
		unset IFS
		echo
		echo 'Licenses: (parsed from: `'"$(join '`, `' "${licenseFiles[@]}")"'`)'
		echo
		for lic in "${licenses[@]}"; do
			echo '- `'"$lic"'`'
		done
	else
		echo
		echo '**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)'
		echo '  If source is available (seen below), check the contents of `debian/copyright` within it.'
		echo
	fi

	if aptSource="$(apt-get source -qq --print-uris "$src" 2>/dev/null)" && [ -n "$aptSource" ]; then
		echo
		echo 'Source:'
		echo
		echo '```'
		echo "$aptSource"
		echo '```'
		case "$aptSource" in
			*.debian.org/*)
				# _probably_ Debian -- let's link to sources.debian.net too
				echo
				echo 'Likely also available for browsing at:'
				echo
				echo '- https://sources.debian.net/src/'"${src//=//}"'/'
				echo '- https://sources.debian.net/src/'"${src//=//}"'/debian/copyright (for direct copyright/license information)'
				;;
		esac
	else
		echo
		echo '**WARNING:** unable to find source (`apt-get source` failed or returned no results)!'
		echo
	fi
done
