adobepremierepro-update)
    # Requires Adobe Remote Update Manager: https://helpx.adobe.com/enterprise/using/using-remote-update-manager.html
    name="Adobe Premiere Pro"
    type="updateronly"
    expectedTeamID="JQ525L2MZD"
    targetDir="/Applications/$(ls /Applications/ | grep Adobe\ Premiere\ Pro\ 20)"
    appName="$(ls "$targetDir" | grep -o "Adobe Premiere Pro 20[^']*\.app")"
    blockingProcesses="$(echo $appName | sed 's/\.[^.]*$//')"
    if [[ -x "/usr/local/bin/RemoteUpdateManager" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running RemoteUpdateManager --productVersions=PPRO --action=list"
        "/usr/local/bin/RemoteUpdateManager" --productVersions=PPRO --action=list
    fi
    updateTool="/usr/local/bin/RemoteUpdateManager"
    updateToolArguments=( --productVersions=PPRO --action=install )
    ;;
