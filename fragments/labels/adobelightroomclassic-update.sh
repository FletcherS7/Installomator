adobelightroomclassic-update)
    name="Adobe Lightroom Classic"
    type="updateronly"
    blockingProcesses=( "Adobe Lightroom Classic" )
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Lightroom Classic.app"
    targetDir="/Applications/Adobe Lightroom Classic"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=LTRM,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=LTRM,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=LTRM,ACR --action=install )
    ;;
