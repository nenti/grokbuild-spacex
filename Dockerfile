FROM nginx:1.27-alpine
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/.git* 2>/dev/null || true
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
