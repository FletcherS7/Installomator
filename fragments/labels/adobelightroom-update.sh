adobelightroom-update)
    name="Adobe Lightroom"
    type="updateronly"
    blockingProcesses=( "Adobe Lightroom" )
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Lightroom.app"
    targetDir="/Applications/Adobe Lightroom CC"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=LRCC,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=LRCC,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=LRCC,ACR --action=install )
    ;;
