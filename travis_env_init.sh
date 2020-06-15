# travis_env_init.sh
# 全局安装 Hexo
npm install -g hexo -no-bin-links --force
# 全局安装 Hexo 命令行工具，因为我们是命令行操作
npm install -g hexo-cli -no-bin-links --force
# 安装 package.json 中的依赖
npm install -no-bin-links --force
