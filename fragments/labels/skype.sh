skype)
    name="Skype"
    type="dmg"
    downloadURL="https://get.skype.com/go/getskype-skypeformac"
    appNewVersion=$(curl -is "https://get.skype.com/go/getskype-skypeformac" | grep ocation: | grep -o "Skype-.*dmg" | cut -d "-" -f 2 | sed 's/.dmg//')
    versionKey="CFBundleVersion"
    expectedTeamID="AL798K98FX"
    appName="Skype.app"
    Company="Microsoft"
    ;;
