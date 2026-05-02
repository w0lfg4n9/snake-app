# 1. Use lightweight Nginx base image
FROM nginx:alpine

# 2. Copy static files into Nginx's default directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# 3. Expose port 80 for HTTP traffic
EXPOSE 80

# 4. Health check (optional but great for cloud)
HEALTHCHECK --interval=30s --timeout=5s \
  CMD wget -q --spider http://localhost || exit 1

# 5. Start Nginx
CMD ["nginx", "-g", "daemon off;"]
