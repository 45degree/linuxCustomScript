# 个人自定义脚本

个人的自定义脚本，用于替换系统部分命令，以及启动自定义功能

## 依赖

1. exa
2. trash-cli

## 如何使用

1. clone 项目

2. 在.zshrc等文件中执行一下命令

``` shell
source (script path)/start.sh
```

## 被替换的命令

1. ls => exa --icons
2. ll => exa --long --header --git --icons -@
3. tree => exa -T --icons
4. rm => trash-put

> 如要禁止替代，执行命令`disable_replace`

## 启动的功能

1. 命令行系统代理

> 如要禁止代理，执行命令`disable_proxy`
