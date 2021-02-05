# Macのカメラが起動してるかどうかチェックするシェルスクリプト

## 仕組み
Macの通信としてUDPの通信が外に出ているときに、そのアプリ名を通知するという単純なもの

## 実行
```
$ sh /path/to/repo/using_cam.sh
```

## 監視設定
### crontab へ記入
```
$ crontab -e
```

### crontab
```
# (5分おきに実行)
*/5 * * * * sh /path/to/repo/using_cam.sh
```