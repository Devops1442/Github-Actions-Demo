FROM nginx:alpine

# Patch system vulnerabilities to pass the Trivy scan
RUN apk update && apk upgrade

# Copy the static HTML file to the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80
