# PARTIR DE UNA IMAGEN
FROM node:14
#ESPACIO DE TRABAJO
WORKDIR /dojodocker
#AÑADIR PACKAGE
ADD package.json package-lock.json /dojodocker/
#INSTALAR DEPENDENCIAS
RUN npm install
#COPIAR EL CÓDIGO 
ADD . /dojodocker
#EXPOSE
EXPOSE 5000
#CORRER EL CONTENEDOR
CMD ["node", "app.js"]