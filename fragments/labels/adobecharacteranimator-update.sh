adobecharacteranimator-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Character Animator"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Character\ Animator\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Character Animator 20[^']*\.app")"
    blockingProcesses=( "Character Animator" )
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=CHAR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=CHAR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=CHAR --action=install )
    ;;
