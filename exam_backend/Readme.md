## 后端安装流程

#### 安装依赖
> composer update  

#### 配置env环境

> 生成env文件  
> cp .env.example .env  
> 数据库配置  
> 生成key密匙  
> php artisan key:generate  

#### 生成数据表

>  php artisan migrate

#### 生成数据

>  php artisan db:seed  (基本表)
>

#### 生成jwt加密密匙 

> php artisan jwt:secret

#### 生成图像文件的连接

> php artisan storage:link


