FROM node

RUN mkdir yapi \ 
&& cd yapi \
&& git clone https://github.com/YMFE/yapi.git vendors \
&& cp vendors/config_example.json ./config.json \
&& cd vendors \
&& npm install --production --registry https://registry.npm.taobao.org

COPY yapi.sh /yapi.sh


EXPOSE 3000
VOLUME ["/yapi"] 

CMD ["sh","/yapi.sh","start"]
