FROM openjdk:17-slim as build

RUN apt-get update && apt-get -y --no-install-recommends install \
   wget unzip

ENV KOTLIN_VERSION 1.6.0
RUN wget "https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip" &&\
    unzip kotlin-compiler-${KOTLIN_VERSION}.zip -d / && mv /kotlinc /usr/lib/


FROM openjdk:17-slim as run

ENV PATH="/usr/lib/kotlinc/bin:${PATH}"
COPY --from=build /usr/lib/kotlinc /usr/lib/kotlinc

ENTRYPOINT [""]
