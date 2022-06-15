adobemuse-update)
    name="Adobe Muse"
    type="updateronly"
    blockingProcesses=( "Adobe Muse CC" )
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Muse CC 2018.app"
    targetDir="/Applications/Adobe Muse CC 2018"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=MUSE --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=MUSE --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=MUSE --action=install )
    ;;
