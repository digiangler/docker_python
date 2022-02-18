# Docker + Python 実行環境

## できること

- JupyterLab
- NumPy

## 手順

### Docker イメージの作成、コンテナのビルド、そしてコンテナの起動

```bash
$ cd docker_python/
$ docker compose up -d --build
```

### 作られたイメージとコンテナの確認

```bash
$ docker image ls
$ docker container ls
```

### コンテナへの接続

```bash
$ docker compose exec python3 bash
```

### JupyterLab をウェブブラウザ経由で起動

```bash
$ docker run -v $PWD/opt:/root/opt -w /root/opt -it --rm -p 7777:8888 docker_python_python3 jupyter-lab --ip 0.0.0.0 --allow-root -b localhost
```

成功すれば次のようなメッセージが出ます。

```bash
    To access the server, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/jpserver-1-open.html
    Or copy and paste one of these URLs:
        http://46102976db71:8888/lab?token=xxxxxxxxxx
        http://127.0.0.1:8888/lab?token=xxxxxxxxxx
```

ウェブブラウザを開き、URL 欄に`localhost:7777`と入力して JupyterLab のサーバーにアクセスしてみましょう。すると Token authentication is enabled というページが出ると思うので、そこに上のメッセージで token=に続くコードをコピーして Password or token の入力欄に入力して Log in ボタンを押します。
うまくいけば JupyterLab にログインされ、無事使えるようになります。
