## 安装流程

#### 安装依赖

> npm install

#### 配置后端域名

> .env.development 无需设置，设置 vue.config.js 中为代理

```
    proxy: {

      [process.env.VUE_APP_BASE_API]: {
        target: `http://域名/api/admin`,
        changeOrigin: true,
        pathRewrite: {
          ["^" + process.env.VUE_APP_BASE_API]: ""
        }
      }
    },
```

> .env.production 文件内配置域名  
> VUE_APP_BASE_API = http://域名/api/admin

#### 运行

> npm run dev

#### 登陆密码

> 用户名: admin 密码： 123456

#### 打包

> npm run build:prod

#### 验证码相关的文档

> https://blog.csdn.net/weixin_34397291/article/details/88725074?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-3.nonecase&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-3.nonecase

> https://www.cnblogs.com/chenhaoyu/p/10371263.html
