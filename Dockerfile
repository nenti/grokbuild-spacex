FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
RUN rm -f /usr/share/nginx/html/Dockerfile 2>/dev/null || true
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]