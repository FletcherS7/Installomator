adobeacrobatprodc-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Acrobat Pro DC"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Acrobat.app"
    targetDir="/Applications/Adobe Acrobat DC"
    blockingProcesses=( "AdobeAcrobat" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=APRO --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=APRO --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=APRO --action=install )
    ;;
