adobepremiererush-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Premiere Rush"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Premiere\ Rush)"
    appName="Adobe Premiere Rush.app"
    blockingProcesses=( "Adobe Premiere Rush" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=RUSH --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=RUSH --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=RUSH --action=install )
    ;;
