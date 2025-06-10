FROM hackinglab/ubuntu-base-hl:latest
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

# Add the files
ADD root /

# Install necessary packages for user creation + nginx + tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nginx \
        vim \
        openssl \
        passwd \
        adduser \
    && rm -rf /var/lib/apt/lists/* \
    && chown -R www-data:www-data /var/lib/nginx \
    && chown -R www-data:www-data /opt/www

# Expose the ports for nginx
EXPOSE 80
