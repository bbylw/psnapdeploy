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

## ✍️ 自定义修改指南

由于本项目是一个纯静态页面，所有的分类和链接都直接声明在 `index.html` 中。您可以非常直观地进行增删改：

### 1. 如何增加/修改/删除“链接卡片”

每个链接均由一个 class 为 `link-card` 的 `div` 元素表示。

#### 🔹 增加链接卡片：
找到对应分类（如 `ai-search`）下的 `<div class="link-grid">` 容器，在内部添加以下代码：
```html
<div class="link-card">
  <!-- 1. 修改 href 为您的目标网址 -->
  <a href="https://example.com" target="_blank" rel="noopener noreferrer"></a>
  <!-- 2. 修改 class 为您想要的 FontAwesome 图标（可在 fontawesome.com 查询） -->
  <i class="fa-solid fa-globe"></i>
  <!-- 3. 修改为您想要的卡片名称 -->
  <h3>网站名称</h3>
</div>
```

#### 🔹 删除链接卡片：
直接选中目标链接卡片的整段 `div` 代码并删除：
```html
<!-- 删除这整段代码 -->
<div class="link-card">
  <a href="..." ...></a>
  <i class="..."></i>
  <h3>...</h3>
</div>
```

#### 🔹 修改链接卡片：
直接编辑 `href` 中的链接、`i` 标签的图标类名，或者 `h3` 中的文本内容。

---

### 2. 如何增加/修改/删除“分类”

分类分为**顶部导航栏入口**和**主内容区板块**两部分，它们通过 `id` 进行关联。

#### 🔹 增加新分类（例如添加“常用视频”分类）：

1. **添加顶部导航栏入口**：
   在 `index.html` 的 `<nav> <ul>` 列表内添加一行链接，`href` 指向新分类的 `id`（例如 `#video-sites`）：
   ```html
   <nav>
     <ul>
       ...
       <li><a href="#video-sites">常用视频</a></li> <!-- 新增此行 -->
     </ul>
   </nav>
   ```

2. **添加主内容区板块**：
   在 `index.html` 的 `<main>` 容器内添加对应的 `<section>` 块，确保 `id` 与上一步设置的 `href` 一致：
   ```html
   <main>
     ...
     <!-- 新增分类板块 -->
     <section id="video-sites">
       <h2 class="category-title">常用视频</h2>
       <div class="link-grid">
         <!-- 在这里添加该分类下的链接卡片 -->
         <div class="link-card">
           <a href="https://youtube.com" target="_blank" rel="noopener noreferrer"></a>
           <i class="fa-brands fa-youtube"></i>
           <h3>YouTube</h3>
         </div>
       </div>
     </section>
   </main>
   ```

#### 🔹 删除分类：
1. 从顶部 `<nav>` 的列表中删除对应的 `<li>` 项。
2. 从 `<main>` 中删除对应整个 `<section id="...">...</section>` 块。

---

## 🚀 部署指南

### 1. 部署到 SnapDeploy (推荐)

本项目已配置好适用于 [snapdeploy.dev](https://snapdeploy.dev) 的 `Dockerfile`。

1. 将修改后的代码推送至您的 GitHub 仓库。
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
