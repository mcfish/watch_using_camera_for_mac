# Macのカメラが起動してるかどうかチェックするシェルスクリプト

## 仕組み
Macの通信としてUDPの通信が外に出ているときに、そのアプリ名を通知するという単純なもの

## 実行
```
$ sh /path/to/repo/using_cam.sh
```

## 監視設定
### 注意点
- 標準のままだと実行されないので注意
https://admin-it.xyz/operation-efficiency/mac-cron-does-not-work-well/

- 実行ファイルのコマンドのfull pathが違う場合は変更してください
```
$ which ipconfig
$ which lsof
```

### crontab へ記入
```
$ crontab -e
```

### crontab
```
# 5分おきに実行, {mac user name} は書き換えてください
*/5 * * * * /bin/sh /path/to/repo/using_cam.sh
```