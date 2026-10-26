FROM nginx:alpine
RUN echo "<h1>CI/CD Deployment Successful!</h1><p>Built and Deployed via Jenkins Pipeline</p>" > /usr/share/nginx/html/index.html
EXPOSE 80
