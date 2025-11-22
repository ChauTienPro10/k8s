FROM codercom/code-server:latest

USER root

# Cài curl và các công cụ cần thiết
RUN apt-get update && apt-get install -y curl

# Hardcode version stable của kubectl (ví dụ v1.33.5)
RUN curl -LO "https://dl.k8s.io/release/v1.33.5/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

USER 1000



# docker tag code-server-kubectl:latest tien22012003/code-server-kubectl:latest
# docker push tien22012003/code-server-kubectl:latest