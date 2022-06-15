adobelightroomclassic-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Lightroom Classic"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Lightroom Classic.app"
    targetDir="/Applications/Adobe Lightroom Classic"
    blockingProcesses=( "Adobe Lightroom Classic" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=LTRM,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=LTRM,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=LTRM,ACR --action=install )
    ;;
