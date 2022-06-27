adobesubstancesampler-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Substance 3D Sampler"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    appName="Adobe Substance 3D Sampler.app"
    targetDir="/Applications/Adobe Substance 3D Sampler"
    blockingProcesses=( "Adobe Substance 3D Sampler" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=SBSTA --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=SBSTA --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=SBSTA --action=install )
    ;;
