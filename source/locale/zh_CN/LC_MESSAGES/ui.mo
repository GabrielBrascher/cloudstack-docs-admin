��    B      ,      <      <  �  =    �  2     �   7  �   �  Z  �	  �   �
     �     �     �  7        :     X  f  s     �  8   �  C   1  3   u     �  4   �     �  9     �   F  �  �     �  �     "   �  �   �  �   n  u   T  4   �  -   �  c   -  E   �  �   �     �  ]   �         $   A  �   f  k   !  h   �     �      	     *  6   J     �     �  �   �  S   6  w  �  C    7   F  �   ~  )   *  _   T  $   �     �  G   �  !   0   3  R   �  �!  {   
#  �   �#  �   1$  �  %  p  �&  �  V(  .   *  x   5*  �   �*  9  Z+  �   �,     q-     �-     �-  1   �-     �-     �-  I  .  $   \/  ?   �/  :   �/  -   �/     *0  *   70     b0  5   u0  �   �0  u  N1     �2  �   �2  (   3  �   �3  �   )4  Z   �4  0   15  !   b5  Q   �5  P   �5  �   '6     �6  J   �6     C7     \7  �   u7  p   @8  J   �8     �8     9     (9  '   B9     j9     z9  h   �9  V   �9  �  J:  (  F<  *   o=  �   �=  '   %>  W   M>  '   �>     �>  >   �>     ?  $  2?  -  W@  g   �A  �   �A  �   zB   **Continue with basic setup.** Choose this if you're just trying CloudStack, and you want a guided walkthrough of the simplest possible configuration so that you can get started right away. We'll help you set up a cloud with the following features: a single machine that runs CloudStack software and uses NFS to provide storage; a single machine running VMs under the XenServer or KVM hypervisor; and a shared public network. **I have used CloudStack before.** Choose this if you have already gone through a design phase and planned a more sophisticated deployment, or you are ready to start scaling up a trial cloud that you set up earlier with the basic setup screens. In the Administrator UI, you can start using the more powerful features of CloudStack, such as advanced VLAN networking, high availability, additional network elements such as load balancers and firewalls, and support for multiple hypervisors including Citrix XenServer, KVM, and VMware vSphere. A sample curl command to create a new instance is: After logging into a fresh Management Server installation, a guided tour splash screen appears. On later visits, you’ll be taken directly into the Dashboard. After the Management Server software is installed and running, you can run the CloudStack user interface. This UI is there to help you provision, view, and manage your cloud infrastructure. After you save the SSH keypair file, you must create an instance by using the template that you created at `Section 5.2.1, “ Creating an Instance Template that Supports SSH Keys” <#create-ssh-template>`__. Ensure that you use the same SSH key name that you created at `Section 5.2.2, “Creating the SSH Keypair” <#create-ssh-keypair>`__. Because each cloud user has their own SSH key, one cloud user cannot log in to another cloud user's instances unless they share their SSH key files. Using a single SSH key pair, you can manage multiple instances. Changing the Root Password Click Accounts. Click View Users. Click the Change Password button. |change-password.png| Click the admin account name. Click the admin user name. CloudStack provides a web-based UI that can be used by both administrators and end users. The appropriate version of the UI is displayed depending on the credentials used to log in. The UI is available in popular browsers including IE7, IE8, IE9, Firefox 3.5+, Firefox 4, Safari 4, and Safari 5. The URL is: (substitute your own management server IP address) Copy the file to /etc/init.d. Copy the key data into a file. The file looks like this: Create a new instance by using the template provided by cloudstack. Create an instance template that supports SSH Keys. Creating an Instance Creating an Instance Template that Supports SSH Keys Creating the SSH Keypair Domain -> If you are a root user, leave this field blank. Download the cloudstack script from `The SSH Key Gen Script <http://sourceforge.net/projects/cloudstack/files/SSH%20Key%20Gen%20Script/>`_ to the instance you have created. During installation and ongoing cloud administration, you will need to log in to the UI as the root administrator. The root administrator account manages the CloudStack deployment, including physical infrastructure. The root administrator can modify configuration settings to change basic functionality, create or delete user accounts, and take many actions that should be performed only by an authorized person. When first installing CloudStack, be sure to change the default password to a new, unique value. End User's UI Overview Ensure that you adjust these values to meet your needs. If you are making the API call from a different server, your URL/PORT will be different, and you will need to use the API keys. For example, from a Linux OS, run: For example, make a call from the cloudstack server to create a SSH keypair called "keypair-doc" for the admin account in the root domain: For example, suppose multiple levels are created under the root domain, such as Comp1/hr. The users in the Comp1 domain should enter Comp1 in the Domain field, whereas the users in the Comp1/sales domain should enter Comp1/sales. For more guidance about the choices that appear when you log in to this UI, see Logging In as the Root Administrator. For more information on creating a new instance, see Give the necessary permissions on the script: If you are a user in the sub-domains, enter the full path to the domain, excluding the root domain. If you see the first-time splash screen, choose one of the following. In addition to the username and password authentication, CloudStack supports using SSH keys to log in to the cloud infrastructure for additional security. You can use the createSSHKeyPair API to generate the SSH keys. Log In to the UI Log in to the UI using the current root user ID and password. The default is admin, password. Logging In Using the SSH Keypair Logging In as the Root Administrator On a fresh Management Server installation, a guided tour splash screen appears. On later visits, you’ll see a login screen where you specify the following to proceed to your Dashboard: Open your favorite Web browser and go to this URL. Substitute the IP address of your own Management Server: Password -> The password associated with the user ID. The password for the default username is password. Resetting SSH Keys Root Administrator's UI Overview Run the following curl command: Run the script while starting up the operating system: Save the file. Stop the instance. Substitute the template, service offering and security group IDs (if you are using the security group feature) that are in your cloud environment. The -i parameter tells the ssh client to use a ssh key found at ~/.ssh/keypair-doc. The CloudStack UI helps the CloudStack administrator provision, view, and manage the cloud infrastructure, domains, user accounts, projects, and configuration settings. The first time you start the UI after a fresh Management Server installation, you can choose to follow a guided tour to provision your cloud infrastructure. On subsequent logins, the dashboard of the logged-in user appears. The various links in this screen and the navigation bar on the left provide access to a variety of administrative functions. The root administrator can also use the UI to perform all the same tasks that are present in the end-user’s UI. The CloudStack UI helps users of cloud infrastructure to view and use their cloud resources, including virtual machines, templates and ISOs, data volumes and snapshots, guest networks, and IP addresses. If the user is a member or administrator of one or more CloudStack projects, the UI can provide a project-oriented view. The output is something similar to what is given below: The prompts in this guided tour should give you all the information you need, but if you want just a bit more detail, you can follow along in the Trial Installation Guide. The root administrator Dashboard appears. To test your SSH key generation is successful, check whether you can log in to the cloud setup. Type the new password, and click OK. User Interface Username -> The user ID of your account. The default username is admin. Using SSH Keys for Authentication With the API command resetSSHKeyForVirtualMachine, a user can set or reset the SSH keypair assigned to a virtual machine. A lost or compromised SSH keypair can be changed, and the user can access the VM by using the new keypair. Just create or register a new keypair, then call resetSSHKeyForVirtualMachine. You are logging in as the root administrator. This account manages the CloudStack deployment, including physical infrastructure. The root administrator can modify configuration settings to change basic functionality, create or delete user accounts, and take many actions that should be performed only by an authorized person. Please change the default password to a new, unique password. You cannot create the instance by using the GUI at this time and associate the instance with the newly created SSH keypair. You must make a call to the createSSHKeyPair api method. You can either use the CloudStack Python API library or the curl commands to make the call to the cloudstack api. You should set a new root administrator password. If you chose basic setup, you’ll be prompted to create a new password right away. If you chose experienced user, use the steps in :ref:`changing-root-password`. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-03-31 14:08-0400
PO-Revision-Date: 2014-05-26 04:42+0000
Last-Translator: renoshen <shenkuan-ghq@sinosig.com>
Language-Team: Chinese (China) (http://www.transifex.com/projects/p/apache-cloudstack-administration-rtd/language/zh_CN/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=1; plural=0;
 **继续执行基本安装。**如果你仅仅是想体验CloudStack，请选择这个，并且这样你可以马上开始跟着向导进行简单的配置。我们将帮助你建立一个有以下功能的云：一个运行CloudStack软件的机器和使用NFS协议的存储；一个运行VMs的XenServer或KVM hypervisor的服务器；一个共享的公有网络。 **我之前用过CloudStack。** 如果您已经完成设计阶段，计划部署一个复杂CloudStack云，或是准备对用基础安装向导搭建的试验云进行扩展，请选择此项。在管理员UI中，您可以使用CloudStack中更强大的功能，例如高级VLAN网络、高可用、负载均衡器和防火墙等额外网络设备，以及支持Citrix XenServer、KVM、VMware vSphere等多种虚拟化平台。 使用简单的curl命令创建新的实例： 初次登录管理服务器时，会出现一个向导启动画面。后续访问时，您会直接进入控制面板。 在管理服务器软件安装并且运行后, 你就可以运行CloudStack的用户界面.了。在这里通过UI，可以供给、查看并管理你的云基础架构。 在你保存了SSH秘钥对文件之后，你必须使用你在`章节 5.2.1, “ 创建支持SSH秘钥的实例模板” <#create-ssh-template>`__中创建的模来板创建一个实例。确保你使用与你在`章节 5.2.2, “创建秘钥对” <#create-ssh-keypair>`__中创建的同样的SSH秘钥名称。 因为每个云用户都有他们自己的SSH秘钥，一个云用户不能登录到另一个云用户的实例中，除非他们共享了他们的SSH key文件。使用一个SSH秘钥对，你可以管理多个实例。 更改Root密码 点击帐户。 点击查看用户。 点击更改密码按钮。 |change-password.png| 点击管理员帐号名。 点击管理员用户名。 CloudStack提供一个基于web的UI，管理员和终端用户能够使用这个界面。用户界面版本依赖于登陆时使用的凭证不同而不同。用户界面是适用于大多数流行的浏览器包括IE7,IE8,IE9,Firefox3.5+,Firefox4,Safari4,和Safari5。URL是:(用你自己的管理控制服务器IP地址代替) 复制这个脚本到 /etc/init.d。 复制秘钥的数据到一个文件。这个文件类似于： 使用CloudStack提供的模板创建一个新的实例。 创建一个支持SSH秘钥的实例模板。 创建实例 创建一个支持SSH秘钥的实例模板 创建SSH秘钥对 域 -> 如果你是root用户，此处留空即可。 从 `The SSH Key Gen Script <http://sourceforge.net/projects/cloudstack/files/SSH%20Key%20Gen%20Script/>`_ 下载CloudStack脚本到你已经创建的实例中。 在云的安装及后续管理过程中，您需要用根管理员登录UI。根管理员账号管理着CloudStack的部署以及物理设施。根管理员可以修改系统配置，改变基本功能，创建和删除用户账号，以及其他仅限于已授权人员执行的操作。在初始安CloudStack时，请务必修改默认密码为新的较独特的密码。 最终用户界面概览 确认你调整这些值是你所需要的。如果你从不同的服务器上做API调用，你的 URL/PORT 也是不同的，并且你必须使用API 秘钥。 举个例子，在LinuxOS中，运行： 比如，从CloudStack服务器为根域中的管理员帐户做调用来创建一个SSH秘钥对 ，名称为 "keypair-doc" ： 例如，假设在根域下建立了多个层级，像Comp1/hr，在Comp1域的用户在域字段处应该输入Comp1，在Comp1/sales域的用户应该输入Comp1/sales。 更多关于当你登录这个界面时选项的指导，参照作为根管理员登录。 关于创建新实例的更多信息，请参阅 给这个脚本必要的权限： 如果你是一个子域用户，在域中输入完全路径，不包括根域。 如果你看到第一次的向导屏幕, 可以选择下面步骤之一进行。 除了用户名和密码验证之外，出于额外的安全性考虑，CloudStack还支持使用SSH秘钥来登录到云架构。你可以使用createSSHKeyPair API来生成SSH秘钥。 登陆到用户界面 使用当前root用户的ID和口令登录UI。缺省为admin，pawword。 使用SSH秘钥对登录 作为根管理员登录 如果管理服务器是全新的安装,。那么会出现一个安装向导。在稍后的访问中,，你将看到一个登录界面,，你需要通过用户名和密码登入来查看你的仪表盘. 打开你自己喜欢的浏览器并访问这个URL。请把IP地址替换成你自己的管理服务器的IP。 密码 -> 用户ID对应的密码。默认用户名的密码是password。 重置SSH密钥 根管理员界面的概述 运行如下curl命令： 当系统启动的时候运行脚本： 保存文件。 停止实例。 在你的云环境中，服务方案和安全组IDs(如果你使用安全组功能)可以替代模板。 参数-i是通知ssh客户端使用一个在~/.ssh/keypair-doc中找到的ssh秘钥。 CloudStack界面帮助CloudStack管理员配置、查看和管理云的基础设施、用户域、账号、项目和配置。当一个全新的管理服务器安装完成后，在第一次启动界面的时候，可以选择根随引导步骤配置云的基础设施。当再次登录时，会显示当前登录用户的仪表板。在这个页面有很多的连接，可以通过左边的导航栏访问各种管理功能。根管理员也可以使用界面像最终用户一样来执行所有的功能。  CloudStack用户界面帮助云基础设施的用户查看和使用他们的云资源，包括虚拟机、模板和ISO、数据卷和快照、宾客网络，以及IP 地址。如果用户是一个或多个CloudStack项目的成员或管理员，用户界面能提供一个面向项目的视图。 输出的内容与下面所示的类似： 安装向导的提示会给你需要的所有信息。但如果你需要更多的详细信息，你可以按照试用安装向导进行。 根管理员的仪表盘显示出来。 测试你的SSH秘钥的生成是否成功，需要检查是否能够登录到云中。 输入新密码，然后点击确认。 用户界面 用户名 -> 你账号的用户ID。默认用户名是admin。 未验证使用SSH秘钥 通过API命令resetSSHKeyForVirtualMachine，用户可以设置或者重设分配给虚拟机的SSH秘钥对。可以更改丢失或被盗用的SSH密钥对，并且用户可以使用新的秘钥对来访问VM。只要创建或注册新的密钥对然后调用resetSSHKeyForVirtualMachine。 使用根管理员登录。这个账号管理CloudStack的部署，包括物理架构。根管理员可以通过更改配置来变更基本的功能，创建或删除用户账号，以及其它许多只有被授权的用户执行的操作。请更改默认的密码，确保其唯一性和安全性。 这时候你不能通过使用 GUI来创建实例，要使用新创建的SSH秘钥对来关联实例。 你必须给createSSHKeyPair api方法做一个调用。你可以使用CloudStack  Python API 库或curl 命令给CloudStack API做调用。 你应该为根管理员设置一个新的密码。如果你选择基础设置。将会提示你立即创建一个新的密码。如果你选择有经验的用户，请选择:ref:`changing-root-password`里的步骤。 