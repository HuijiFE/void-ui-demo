const pth = require('path');

const resolve = (...paths) => pth.resolve(__dirname, ...paths);

module.exports = {
  chainWebpack: config => {
    config.resolve.alias.set(
      'void-ui$',
      resolve('node_modules/void-ui/src/index.ts')
    );
  },

  devServer: {
    host: '0.0.0.0',
    port: 8121, // 端口号
    open: false // 是否自动打开浏览器
  }
};
