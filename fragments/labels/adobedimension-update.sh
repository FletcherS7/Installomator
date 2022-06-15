adobedimension-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Dimension"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Dimension.app"
    targetDir="/Applications/Adobe Dimension"
    blockingProcesses=( "Adobe Dimension Helper" "Adobe Dimension" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=ESHR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=ESHR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=ESHR --action=install )
    ;;
