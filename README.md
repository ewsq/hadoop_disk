
已调通基本可以使用，文件内容实际上以BASE64字符串的形式存放在HBase中，具体实现见UploadAndDownServiceImpl.java中的uploadFile方法。


test中的 HbaseConnTest.java 演示了如何存取 HBase 中的文件。
test中的 HdfsConnTest.java 演示了如何存取 Hadoop 中的文件。


config包中的hadoop和hbase包是关于hadoop操作和hbase操作的核心类。


由于程序使用了HBase做为文件的存储，所以需要首先使用com.liangrui.hadoop_disk.config.hbase中的CreateTable建表和添加列族。

由于程序使用了MySQL来存储用户、群组、文件等信息，所以首先需要使用脚本在MySQL中添加表和基础数据，本程序使用的是MySQl 8.0以上版本。


访问：
http://localhost:8080/hadoop/index/login
用户名：wsq 
密 码：123456

