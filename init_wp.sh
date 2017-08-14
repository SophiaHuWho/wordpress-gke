pod=[POD]
static_ip=[STATIC_IP_ADDR]
title="Wordpress Test"
user=admin
password=password
email=admin@foo.bar

kubectl exec $pod -c web -- bash -c "curl -s -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod a+x wp-cli.phar && ./wp-cli.phar core install --url=http://$static_ip --title=gke-test --admin_user=$user --admin_password=$password --admin_email=$email --path=/var/www/html --allow-root"
