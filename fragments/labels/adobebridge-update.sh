adobebridge-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Bridge"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Bridge\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Bridge 20[^']*\.app")"
    blockingProcesses="$(echo $appName | sed 's/\.[^.]*$//')"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=KBRG,ACR --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=KBRG,ACR --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=KBRG,ACR --action=install )
    ;;
