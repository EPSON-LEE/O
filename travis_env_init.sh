# travis_env_init.sh
# 全局安装 Hexo
npm install -g hexo
# 全局安装 Hexo 命令行工具，因为我们是命令行操作
npm install -g hexo-cli
# 安装 package.json 中的依赖
npm uninstall node-sass && npm install node-sass
npm install --save-dev node-sass
npm install --force
