adobesubstancestager-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Substance 3D Stager"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Substance 3D Stager.app"
    targetDir="/Applications/Adobe Substance 3D Stager"
    blockingProcesses=( "Adobe Substance 3D Stager" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=STGR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=STGR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=STGR --action=install )
    ;;
