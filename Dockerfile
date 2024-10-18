FROM hackinglab/ubuntu-base-hl:latest
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

# Add the files
ADD root /

RUN apt-get update && \
    apt-get install -y nginx vim openssl && \
    rm -rf /var/lib/apt/lists/* && \
    chown -R www-data:www-data /var/lib/nginx && \
    chown -R www-data:www-data /opt/www

# Expose the ports for nginx
EXPOSE 80
