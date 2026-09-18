FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy our food delivery web app into Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose standard web traffic port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
