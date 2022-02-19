#!/bin/bash
set -e

# server.pidを削除
rm -f /railsNextApp/tmp/pids/server.pid

# コンテナのメインプロセス（DockerfileでCMDと設定されているもの）を実行します。
exec "$@"