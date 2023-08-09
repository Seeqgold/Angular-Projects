FROM denoland/deno:latest 


WORKDIR /app

COPY . ./

EXPOSE 80

RUN deno cache server.ts

CMD ["run", "--allow-net", "server.ts"]