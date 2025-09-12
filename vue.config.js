const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // 部署到 GitHub Pages 的設定
  // publicPath 設為儲存庫的名稱
  publicPath: process.env.NODE_ENV === 'production'
    ? '/my-practice/' // 將 'YOUR_REPOSITORY_NAME' 換成您的儲存庫名稱
    : '/'
})