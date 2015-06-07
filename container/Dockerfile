FROM java:8
ADD stage /backend/
EXPOSE 2500
CMD chmod u+x /backend/bin
ENV LANG en_US.UTF-8
ENTRYPOINT /backend/bin/backend -Dhttp.port=2500
