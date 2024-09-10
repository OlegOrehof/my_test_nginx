# Этот Dockerfile использует официальный образ Nginx
# Порты 80 и 443 открыты для доступа к веб-серверу
# Команда CMD запускает Nginx в режиме, когда он не переходит в фоновый режим

# Используем официальный образ Nginx
FROM nginx:latest

# Копируем статические файлы сайта
COPY ./index.html   /usr/share/nginx/html/index.html
COPY ./butterfly.png.jpg  /usr/share/nginx/html/butterfly.png

# Открываем порты для взаимодействия с контейнером
# EXPOSE 80
# EXPOSE 443

# Запускаем Nginx при старте контейнера
# CMD ["nginx", "-g", "daemon off;"]
# CMD ["/usr/share/nginx", "-D", "FOREGROUND"]
