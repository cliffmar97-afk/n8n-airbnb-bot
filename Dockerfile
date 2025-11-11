FROM n8nio/n8n:latest

# PH Timezone (Alpine uses apk)
RUN apk add --no-cache tzdata
ENV TZ=Asia/Manila
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 5678

CMD ["n8n", "start"]
