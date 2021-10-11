## About

This repository is forked from gitlabhq/omnibus-gitlab, we have the following modifications are provided

* replace README.md
* add README-zh.md, CHANGELOG.md, Notes.md, docker-compose-production.yml, .github folder

### 安装

Gitlab 官方提供了一个单体的 Gitlab 镜像，包含应用和数据库等所有组件。

### 端口

Gitlab 最少需要开放两个端口：HTTP 和 SSH 端口，其中 SSH 端口是 git 的一种通道，不是我们常用的 SSH 登录的用途。

### 配置

可以通过环境变量传递配置，也可以修改 gitlab.rb 配置文件

### 数据库

* PostgreSQL 内置在 Gitlab 容器中，如何直接连接它？ 暂无方案  
* 是否可以直接修改 gitlab.rb，采用外部数据库？待研究

### 其他

gitlab-runner 是 Gitlab 另外一个工具，类似计划任务。     