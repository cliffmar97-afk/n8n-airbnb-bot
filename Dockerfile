FROM n8nio/n8n:latest

# PH Timezone
RUN apk add --no-cache tzdata
ENV TZ=Asia/Manila
RUN cp /usr/share/zoneinfo/Asia/Manila /etc/localtime

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
