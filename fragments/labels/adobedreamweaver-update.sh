adobedreamweaver-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Dreamweaver"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Dreamweaver\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Dreamweaver 20[^']*\.app")"
    blockingProcesses=( "Dreamweaver" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=DRWV --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=DRWV --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=DRWV --action=install )
    ;;
