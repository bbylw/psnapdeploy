# WebNav Hub (网页导航中心)

一个美观、轻量、自适应的网页导航中心。汇集了 AI 搜索、托管社交、实用工具、科技资讯、云存储、电子邮箱等常用优质链接，专门为快速直达和日常效率而设计。

---

## 🌟 项目特点

- 📱 **响应式布局**：完美适配手机、平板、桌面端等各种屏幕尺寸。
- 🎨 **暗黑美学**：精美优雅的暗黑风格界面，带来舒适的视觉体验。
- ⚡ **极致轻量**：纯原生 HTML/CSS/JS 开发，零依赖、秒开级加载速度。
- 🧭 **平滑导航**：顶部导航栏固定，支持分类快速定位和平滑滚动。
- 🐳 **容器化支持**：内置 Docker 配置，支持一键部署到 SnapDeploy 等容器云平台。

---

## 🚀 部署指南

### 1. 部署到 SnapDeploy (推荐)

本项目已配置好适用于 [snapdeploy.dev](https://snapdeploy.dev) 的 `Dockerfile`。

1. 将本项目推送至您的 GitHub 仓库。
2. 登录 `snapdeploy.dev` 控制台，点击 **New Container**。
3. 选择 **Deploy from GitHub** 并关联您的项目仓库。
4. 点击 **Deploy**，平台会自动构建并生成您的专属访问链接。

### 2. 使用 Docker 本地运行

如果您想在本地通过 Docker 运行服务，可执行以下命令：

```bash
# 构建镜像
docker build -t webnav-hub .

# 运行容器 (映射本地 8080 端口)
docker run -d -p 8080:80 webnav-hub
```
运行后在浏览器中访问 `http://localhost:8080` 即可。

### 3. 直接运行

因为项目是纯静态页面，您也可以克隆仓库后，**直接双击 `index.html`** 在浏览器中打开使用。

---

## 🛠️ 技术栈

- **结构/模板**：HTML5 (语义化标签、ARIA 无障碍属性支持)
- **样式/设计**：CSS3 (CSS Variables, Grid/Flexbox 响应式布局)
- **图标库**：FontAwesome v7.3.0
- **运行环境**：Nginx (基于 Alpine Linux 的轻量级容器)
