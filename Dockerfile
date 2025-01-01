FROM nodered/node-red:latest

# 複製 flows.json 到 /data
COPY flows.json /data/flows.json

# 安裝其他 Node-RED 節點
RUN npm install --no-update-notifier --no-fund --only=production \
    @flowfuse/node-red-dashboard \
    node-red-node-markdown

COPY flows.json /data/flows.json
