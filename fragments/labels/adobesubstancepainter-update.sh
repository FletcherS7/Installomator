adobesubstancepainter-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Substance 3D Painter"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Substance 3D Painter.app"
    targetDir="/Applications/Adobe Substance 3D Painter"
    blockingProcesses=( "Adobe Substance 3D Painter" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=SBSTP --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=SBSTP --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=SBSTP --action=install )
    ;;
