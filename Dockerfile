FROM keymetrics/pm2:latest-alpine
WORKDIR /usr/src/app

# 安装 yarn
RUN npm install -g yarn

# 安装依赖
COPY ["package.json", "yarn.lock", ".yarnrc", "./"]
RUN yarn install

# 复制项目文件
COPY . .

# 端口与 vue.config.js 中的对应
EXPOSE 8121

# 启动开发热重载服务
CMD ["yarn", "serve"]
