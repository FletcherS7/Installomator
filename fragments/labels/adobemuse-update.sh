adobemuse-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Muse"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Muse CC 2018.app"
    targetDir="/Applications/Adobe Muse CC 2018"
    blockingProcesses=( "Adobe Muse CC" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=MUSE --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=MUSE --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=MUSE --action=install )
    ;;
