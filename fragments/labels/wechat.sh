wechat)
    name="WeChat"
    type="dmg"
    archiveName="WeChatMac.dmg"
    downloadURL="$(curl -fsLIXGET https://dldir1.qq.com/weixin/mac/WeChatMac.dmg | grep -o -i -E 'https.*' | cut -d\& -f1)"
    curlOptions=( -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15" )
    expectedTeamID="5A4RE8SF68"
    ;;
