adobexd-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe XD"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe XD.app"
    targetDir="/Applications/Adobe XD"
    blockingProcesses=( "Adobe XD" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=SPRK --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=SPRK --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=SPRK --action=install )
    ;;
