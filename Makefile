build:
	docker build -t proxy .

shell:
	docker run -it --rm -p 8080:80 -v $(PWD)/config:/config proxy /bin/sh

run:
	docker run -it --rm -p 8080:80 -v $(PWD)/config:/config proxy /usr/sbin/httpd -DFOREGROUND -f /config/apache2.conf

nginx:
	sudo install -m 644 -o root -g root proxy.conf /etc/nginx/sites-enabled/
	sudo nginx -t && sudo systemctl restart nginx
