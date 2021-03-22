# 业务迁移、扩容机器注意事项

- 检查是否有公网权限，若不需要【去除】
- 检查规格，磁盘，所属用户是否一致
- RASP【nuwa已集成】、wiseapm【调用链】、flume【日志采集】、添加软链接：workdir、nginxdir、applogs、logdir

- 安装SLB、刷新hosts、部署业务、

- 如果有使用ELB，需要把机器IP添加到内网或者公网ELB里面

- 如果是部署在新子网，需要给数据库加业务用户白名单

- 如果该模块有单独再其他领域添加白名单，需要联系开发将新机器IP给对应领域放通白名单

- 安装Datapush

- 检查业务是否具备开机自启
- 更新台账：跳板机、svn台账、云眼集群管理、云眼资源管理等