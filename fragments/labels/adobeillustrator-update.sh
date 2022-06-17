adobeillustrator-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Illustrator"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Illustrator\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Illustrator 20[^']*\.app")"
    blockingProcesses=( "Adobe Illustrator" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=ILST --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=ILST --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=ILST --action=install )
    ;;
