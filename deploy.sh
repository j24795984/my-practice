#!/usr/bin/env sh

# 當發生錯誤時終止腳本
set -e

# 建置
npm run build

# 移動至 build 好的 dist 目錄
cd dist

# 在 dist 資料夾內初始化 git
git init
# 強制將分支名稱設為 main
git branch -M main
git add -A
git commit -m 'deploy'

# =================================================================
# 關鍵：確認使用的是 https:// 開頭的網址，而不是 git@ 開頭
# 請再次確認已將 <USERNAME> 與 <REPO> 換成你自己的帳號與專案名稱
# =================================================================
git push -f https://github.com/j24795984/my-practice.git main:gh-pages

cd -

