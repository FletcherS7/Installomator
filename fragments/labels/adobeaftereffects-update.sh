adobeaftereffects-update)
    name="Adobe After Effects"
    type="updateronly"
    blockingProcesses=( "After Effects" )
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ After\ Effects\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe After Effects 20[^']*\.app")"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=AEFT,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=AEFT,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=AEFT,ACR --action=install )
    ;;
