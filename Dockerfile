FROM nginx:alpine

# Remove a config padrão e adiciona a nossa
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia os arquivos do site
COPY index.html /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
COPY favicon-16.png /usr/share/nginx/html/
COPY favicon-32.png /usr/share/nginx/html/
COPY favicon-180.png /usr/share/nginx/html/
COPY wp-content/ /usr/share/nginx/html/wp-content/
COPY unicamp/ /usr/share/nginx/html/unicamp/
COPY uerj/ /usr/share/nginx/html/uerj/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
