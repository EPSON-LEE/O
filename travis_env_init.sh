# travis_env_init.sh
# INSTALL GLOBAL NPM PACKAGES
npm config set unsafe-perm true
# clean cache
npm cache clean
# 全局安装 Hexo
npm install -g --force hexo
# 全局安装 Hexo 命令行工具，因为我们是命令行操作
npm install -g --force hexo-cli
# 安装 package.json 中的依赖
npm install -–no-bin-link --force
