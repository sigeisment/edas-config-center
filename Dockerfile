# 建议生产使用，ref: http://blog.tenxcloud.com/?p=1894
FROM fabric8/java-jboss-openjdk8-jdk

# Prepare by downloading dependencies
COPY edas-config-center.jar /home/