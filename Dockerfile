FROM node:18

WORKDIR /app

RUN npm install -g mcp-server

# Esta es la forma correcta de definir variables de entorno en Docker
ENV DEEPSEEK_API_KEY=sk-7218b20911f742128d61f27fc097fcfb

EXPOSE 3000

CMD ["mcp-server"]
