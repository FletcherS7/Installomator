adobesubstancedesigner-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Substance 3D Designer"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Substance 3D Designer.app"
    targetDir="/Applications/Adobe Substance 3D Designer"
    blockingProcesses=( "Adobe Substance 3D Designer" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=SBSTD --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=SBSTD --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=SBSTD --action=install )
    ;;
