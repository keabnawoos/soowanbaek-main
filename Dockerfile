FROM nginx:alpine
# Nginx의 기본 설정을 바꿔서 3000번 포트로 응답하게 만듭니다.
RUN sed -i 's/listen       80;/listen       3000;/' /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 3000
