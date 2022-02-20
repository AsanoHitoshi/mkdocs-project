# 操作方法

## イメージをビルドする

```
docker build . -t mkdocs
```

## コンテナの作成

現在のディレクトを/scr に同期する設定

```
docker run --name mkdocs -d -p 8000:8000 --mount type=bind,source=$(pwd)/,target=/src/ mkdocs
```

## コンテナのシェルに入る

```
docker exec -it mkdocs sh
```

## コンテナを停止

```
docker stop mkdocs
```

## コンテナを削除

```
docker rm mkdocs
```

## ブラウザからアクセスする

```
http://localhost:8000
```
