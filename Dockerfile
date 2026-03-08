FROM nginx:alpine
RUN sed -i 's/listen       80;/listen       3000;/' /etc/nginx/conf.d/default.conf

# 파일 하나가 아니라, 현재 저장소의 모든 내용을 Nginx 웹 폴더로 통째로 복사합니다.
COPY . /usr/share/nginx/html/

EXPOSE 3000
