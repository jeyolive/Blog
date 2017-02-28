# Blog

这是我的个人博客，[网址](http://www.acodesigner.tech)

前端使用Materialize，后端使用JSP+Servlet，使用Maven作为项目管理工具，版本控制使用Git，开发工具使用Intellij IDEA，数据库使用MySQL,文本编辑模块使用CKEditor插件。
#### 界面展示
![image](C:\Users\77239\Desktop\home.png)

![image](C:\Users\77239\Desktop\backend.png)
#### 后端设计
![image](C:\Users\77239\Desktop\blog.png)
#### 前端设计
![image](C:\Users\77239\Desktop\index.jsp.png)
![image](C:\Users\77239\Desktop\manage.jsp.png)
![image](C:\Users\77239\Desktop\login.jsp.png)
#### 数据库设计
1. 数据库创建好后会添加about分类、“关于”文章、默认管理员（账号admin，密码123）
2. blog_article表中第一篇是关于文章，categoryId为1
3. blog_message中，messageType 0 指代消息类型的评论类型 1 留言 2 评论回复 3 留言回复 pid为消息的父ID,其中留言的pid设定为0
4. blog_user中，userType 0代表普通用户，1代表管理员
5. 具体可查看blog.sql文件