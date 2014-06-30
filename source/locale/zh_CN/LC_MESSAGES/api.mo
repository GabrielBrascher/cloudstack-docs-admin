��          �       |      |  W   }     �  �   �  �   �    T  �   t    h  #   n  5   �  �   �  G   s  �   �     �  �   �      6	  (   W	  &   �	  "   �	  0   �	  L   �	  ;   H
  �  �
  ?   d     �  �   �  �   Y  �   �  �   �  �   �     �  *   �  �   �  ;   �  �   �     d  s   }      �          2     R  &   q  G   �  -   �   Access user data by running the following command using the result of the above command CloudStack API CloudStack expects that a customer will have their own user provisioning infrastructure. It provides APIs to integrate with these existing systems where the systems call out to CloudStack to add/remove users.. CloudStack provides API access to attach up to 32KB of user data to a deployed VM. Deployed VMs also have access to instance metadata via the virtual router. CloudStack supports pluggable authenticators. By default, CloudStack assumes it is provisioned with the user’s password, and as a result authentication is done locally. However, external authentication is possible as well. For example, see Using an LDAP Server for User Authentication. Many CloudStack API calls are asynchronous. These will return a Job ID immediately when called. This Job ID can be used to query the status of the job later. Also, status calls on impacted resources will provide some indication of their state. Meta Data can be accessed similarly, using a URL of the form http://10.1.1.1/latest/meta-data/{metadata type}. (For backwards compatibility, the previous URL http://10.1.1.1/latest/{metadata type} is also supported.) For metadata type, use one of the following: Provisioning and Authentication API Run the following command to find the virtual router. See `the Developer’s Guide <https://cwiki.apache.org/confluence/display/CLOUDSTACK/Development+101>`_ and `the API Reference <http://cloudstack.apache.org/docs/api/>`_. The API has a REST-like query basis and returns results in XML or JSON. The CloudStack API is a low level API that has been used to implement the CloudStack web UIs. It is also a good basis for implementing other popular APIs such as EC2/S3 and emerging DMTF standards. User Data and Meta Data User data can be accessed once the IP address of the virtual router is known. Once the IP address is known, use the following steps to access the user data: availability-zone. The Zone name instance-id. The instance name of the VM local-hostname. The hostname of the VM local-ipv4. The guest IP of the VM public-hostname. This is the same as public-ipv4 public-ipv4. The first public IP for the router. (E.g. the first IP of eth2) service-offering. A description of the VMs service offering Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-03-31 14:08-0400
PO-Revision-Date: 2014-05-24 13:43+0000
Last-Translator: darrentang <darrentang.dt@gmail.com>
Language-Team: Chinese (China) (http://www.transifex.com/projects/p/apache-cloudstack-administration-rtd/language/zh_CN/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=1; plural=0;
 通过上述命令的结果运行如下命令访问用户数据 CloudStack API CloudStack期望客户都会有自己的用户提供基础设施。它提供的API可与这些现有系统集成，通过外部调用CloudStack添加/删除用户。 CloudStack提供的API访问在部署VM时可附加多达32KB的用户数据。部署虚拟机也可以通过虚拟路由器访问实例的元数据。 CloudStack支持插件类型的身份验证. 默认情况下, CloudStack假定自身提供用户密码，作为本地的验证方式. 但也可以使用外部验证。 例如, 参阅使用LDAP服务器进行用户验证。 大多CloudStack的API调用都是异步的. 在调用时它们将立即返回一个任务ID。这个任务ID稍后可以用于查询任务状态。此外，状态调用会在资源受影响时提供一些状态指示。 元数据同样可以被访问，使用URL表单 http://10.1.1.1/latest/meta-data/{元数据类型} 。 (为了向后兼容，之前的URL也同样支持 http://10.1.1.1/latest/{元数据类型} 。) 关于元数据类型，请使用以下方法之一： 配置和认证API 执行如下命令查找虚拟路由器。 参阅  `开发指南 <https://cwiki.apache.org/confluence/display/CLOUDSTACK/Development+101>`_ 和 `参考API <http://cloudstack.apache.org/docs/api/>`_. API基于类似REST的查询, 可以返回XML或JSON格式. CloudStack API 是可以被用来实现CloudStack Web UI的底层API。这是良好的基础使其提供比如EC2和S3和新兴的DMTF标准等受欢迎的API。 用户数据和元数据 一旦得知虚拟路由的IP便可以访问用户数据。得到IP地址后使用如下步骤访问用户数据： availability-zone。区域名称 instance-id。VM实例的名称 local-hostname。VM的主机名 local-ipv4。VM的来宾地址 public-hostname。与public-ipv4相同 public-ipv4。第一个IP为路由器的IP。 (E.g. eth2为第一个IP) service-offering。VM服务方案的描述。 