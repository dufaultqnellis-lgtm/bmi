# 部署指南 - 让 PlusFit 在微信中可访问

## 问题说明
localhost:8080 只能在本机访问，微信无法打开本地地址。您需要将网站部署到公网。

## 方案 1：使用 Vercel（推荐 - 完全免费，无需 GitHub）

### 步骤：

1. **安装 Vercel CLI**（已完成）
   ```bash
   npm install -g vercel
   ```

2. **部署网站**
   ```bash
   cd /workspaces/bmi
   vercel --prod
   ```

3. **按照提示操作**
   - 选择 "Create a new project"
   - 输入项目名称（例如：plusfit-bmi）
   - 选择框架：None of the above
   - 完成后会获得一个公网 URL

## 方案 2：使用 Netlify（无需 GitHub，但需要邮箱）

1. **在线部署**
   - 访问 https://app.netlify.com/drop
   - 拖拽 index.html 到网页
   - 自动获得公网 URL

2. **或使用 CLI**
   ```bash
   npm install -g netlify-cli
   netlify deploy
   ```

## 方案 3：使用 GitHub Pages（需要 GitHub，但完全免费）

1. 上传到 GitHub 仓库
2. 启用 GitHub Pages
3. 获得公网 URL (username.github.io/bmi)

## 部署后

获得公网 URL 后，您可以：
- ✅ 在微信中分享链接
- ✅ 在手机上访问
- ✅ 在任何地方访问
- ✅ 无需任何登录

所有用户数据都存储在他们的浏览器本地存储中，**完全不需要 GitHub 登录**

## 快速部署命令

```bash
# 方案 1: Vercel
vercel --prod

# 方案 2: Netlify
netlify deploy --prod

# 方案 3: Python HTTP 服务器 + ngrok
npm install -g ngrok
ngrok http 8080
```

## 获得的公网 URL 示例

- Vercel: `https://plusfit-bmi.vercel.app`
- Netlify: `https://plusfit-bmi.netlify.app`
- ngrok: `https://xxxx-xx-xxx-xxx.ngrok-free.app`

**在微信中直接分享这个链接即可！**
