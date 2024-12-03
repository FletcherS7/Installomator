shurewirelessworkbench)
    name="Wireless Workbench"
    type="pkg"
    downloadURL="https://www.shure.com/en-US/sw/wwb-mac"
    appNewVersion=$(curl -fsLIXGET "$downloadURL" | grep -i "^location" | sed -e 's/location\: //' | sed -e 's/.*Wireless-Workbench-macOS-\(.*\).pkg/\1/')
    expectedTeamID="4K6323CXC4"
    ;;
