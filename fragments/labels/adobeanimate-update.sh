adobeanimate-update)
    name="Adobe Animate"
    type="updateronly"
    blockingProcesses=( "Animate" )
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Animate\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Animate 20[^']*\.app")"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=FLPR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=FLPR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=FLPR --action=install )
    ;;
