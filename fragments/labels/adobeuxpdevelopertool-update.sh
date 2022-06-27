adobeuxpdevelopertool-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Adobe UXP Developer Tool"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe UXP Developer Tool.app"
    targetDir="/Applications/Adobe UXP Developer Tool"
    blockingProcesses=( "Adobe UXP Developer Tool" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=UXPD --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=UXPD --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=UXPD --action=install )
    ;;
