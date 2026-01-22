#!/bin/bash

# PlusFit 一键部署脚本

echo "🚀 PlusFit 部署助手"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "选择部署方式："
echo ""
echo "1) Netlify Drop (最简单 - 无需账户)"
echo "2) Vercel (推荐 - 邮箱即可)"
echo "3) GitHub Pages (需要 GitHub)"
echo "4) 本地查看 (localhost:8080)"
echo ""
read -p "请选择 (1-4): " choice

case $choice in
  1)
    echo ""
    echo "📋 使用 Netlify Drop 部署："
    echo ""
    echo "1. 打开浏览器访问: https://app.netlify.com/drop"
    echo "2. 从此目录拖拽 index.html 到网页"
    echo "3. 等待上传完成"
    echo "4. 复制生成的 URL 到微信分享"
    echo ""
    echo "✨ 就这么简单！"
    echo ""
    open "https://app.netlify.com/drop" 2>/dev/null || xdg-open "https://app.netlify.com/drop" 2>/dev/null || echo "请访问: https://app.netlify.com/drop"
    ;;
  2)
    echo ""
    echo "🌍 使用 Vercel 部署..."
    echo ""
    if ! command -v vercel &> /dev/null; then
      echo "📦 安装 Vercel CLI..."
      npm install -g vercel
    fi
    echo ""
    echo "运行部署命令..."
    cd /workspaces/bmi
    vercel --prod
    echo ""
    echo "✨ 部署完成！复制上面的 URL 到微信分享"
    ;;
  3)
    echo ""
    echo "📦 使用 GitHub Pages 部署..."
    echo ""
    echo "1. 访问: https://github.com/new"
    echo "2. 创建新仓库"
    echo "3. 上传 index.html"
    echo "4. 进入 Settings → Pages"
    echo "5. 选择 main 分支，点击 Save"
    echo "6. 等待几分钟后即可访问"
    echo ""
    open "https://github.com/new" 2>/dev/null || xdg-open "https://github.com/new" 2>/dev/null || echo "请访问: https://github.com/new"
    ;;
  4)
    echo ""
    echo "🏠 本地查看模式"
    echo ""
    echo "已在运行的本地服务："
    echo "👉 http://localhost:8080"
    echo ""
    echo "⚠️  注意：localhost 无法在微信中打开"
    echo "如需分享，请选择上面的 1、2、3 种部署方式"
    echo ""
    ;;
  *)
    echo "❌ 无效选择"
    ;;
esac

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "需要帮助? 查看 HOW_TO_SHARE.md"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
