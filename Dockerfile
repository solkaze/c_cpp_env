# ベースイメージ
FROM ubuntu:22.04

# タイムゾーンと非対話モード
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# 必要なツールのインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    gdb \
    valgrind \
    vim \
    man \
    clang-format \
    git \
    cmake \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリの作成
WORKDIR /workspace

# 初期起動コマンド
CMD [ "bash" ]
