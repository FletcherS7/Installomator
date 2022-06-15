adobelightroom-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Lightroom"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Lightroom.app"
    targetDir="/Applications/Adobe Lightroom CC"
    blockingProcesses=( "Adobe Lightroom" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=LRCC,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=LRCC,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=LRCC,ACR --action=install )
    ;;
