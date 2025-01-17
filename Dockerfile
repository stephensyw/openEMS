# 基於 Java 的基礎鏡像
FROM openjdk:17-jdk-slim

# 設置工作目錄
WORKDIR /app

# 複製 JAR 和配置文件
COPY target/openems.jar /app/openems.jar
COPY config/ /app/config/

# 暴露應用端口
EXPOSE 8080

# 啟動應用程序
CMD ["java", "-jar", "/app/openems.jar"]
