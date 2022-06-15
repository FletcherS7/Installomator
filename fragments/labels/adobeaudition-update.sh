adobeaudition-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Audition"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Audition\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Audition 20[^']*\.app")"
    blockingProcesses="$(echo $appName | sed 's/\.[^.]*$//')"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=AUDT --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=AUDT --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=AUDT --action=install )
    ;;
