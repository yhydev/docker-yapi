FROM node

RUN mkdir yapi \ 
&& cd yapi \
&& git clone https://gitee.com/yhydev97/yapi.git vendors \
&& cp vendors/config_example.json ./config.json \
&& cd vendors \
&& npm install --production --registry https://registry.npm.taobao.org

COPY yapi.sh /yapi.sh


EXPOSE 3000
VOLUME ["/yapi"] 

CMD ["sh","/yapi.sh","start"]
