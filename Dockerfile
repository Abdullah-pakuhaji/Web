<<<<<<< HEAD
# Gunakan image nginx ringan sebagai web server
FROM nginx:alpine

# Hapus file default bawaan nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file dari folder project ke folder html di nginx
COPY . /usr/share/nginx/html

# Buka port 80 untuk akses web
EXPOSE 80

# Jalankan nginx di foreground (agar container tetap berjalan)
CMD ["nginx", "-g", "daemon off;"]
=======
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
EXPOSE 80
>>>>>>> c99c6a3 (Upload awal proyek CariTahu)
