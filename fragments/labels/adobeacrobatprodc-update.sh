adobeacrobatprodc-update)
    name="Adobe Acrobat Pro DC"
    type="updateronly"
    blockingProcesses=( "AdobeAcrobat" )
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Acrobat.app"
    targetDir="/Applications/Adobe Acrobat DC"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=APRO --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=APRO --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=APRO --action=install )
    ;;
