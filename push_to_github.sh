#!/bin/bash
# SuperME 课程仓库一键推送脚本
# 在本地电脑（能访问 GitHub）执行此脚本

set -e

echo "=== SuperME 课程仓库推送脚本 ==="

# 检查是否在 superme_repo 目录
if [ ! -f "index.html" ]; then
    echo "请先切换到 superme 仓库目录"
    exit 1
fi

# 设置远程仓库地址
git remote set-url origin https://github.com/busilb/superme.git 2>/dev/null || \
git remote add origin https://github.com/busilb/superme.git

# 推送到 GitHub
echo "正在推送到 GitHub..."
git push -u origin main --force

echo ""
echo "=== 推送成功！==="
echo "网站地址: https://busilb.github.io/superme/"
echo "请等待 1-2 分钟让 GitHub Pages 部署完成"
