adobedimension-update)
    name="Adobe Dimension"
    type="updateronly"
    blockingProcesses=( "Adobe Dimension Helper" "Adobe Dimension" )
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Dimension.app"
    targetDir="/Applications/Adobe Dimension"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=ESHR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=ESHR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=ESHR --action=install )
    ;;
