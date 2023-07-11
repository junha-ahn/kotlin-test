FROM openjdk:17-jdk-slim as builder
COPY gradlew .
COPY settings.gradle.kts .
COPY build.gradle.kts .
COPY gradle gradle
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJar
RUN java -Djarmode=layertools -jar build/libs/*.jar extract

FROM openjdk:17-jdk-slim as runtime
COPY --from=builder dependencies/ ./