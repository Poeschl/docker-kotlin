FROM eclipse-temurin:17-jdk-jammy as build

RUN apt-get update && apt-get -y --no-install-recommends install \
   wget unzip

ENV KOTLIN_VERSION 2.0.20
RUN wget "https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip" &&\
    unzip kotlin-compiler-${KOTLIN_VERSION}.zip -d / && mv /kotlinc /usr/lib/


FROM eclipse-temurin:17-jdk-jammy as run

ENV PATH="/usr/lib/kotlinc/bin:${PATH}"
COPY --from=build /usr/lib/kotlinc /usr/lib/kotlinc

ENTRYPOINT [""]
