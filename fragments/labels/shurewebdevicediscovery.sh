shurewebdevicediscovery)
    name="Shure Web Device Discovery"
    type="pkg"
    downloadURL=$(curl -fs "https://www.shure.com/en-US/support/downloads/software-firmware-archive/web-device-discovery" | grep -o 'href="[a-z]\+[^>"]*' | sed -ne 's/^href="\(.*\)/\1/p' | grep -E '\.pkg')
    appNewVersion=$(echo "$downloadURL" | sed -e 's/.*Web-Device-Discovery-mac-\(.*\).pkg/\1/')
    expectedTeamID="4K6323CXC4"
    ;;
