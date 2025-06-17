<h1> Boundless 一键脚本 </h1>


### 1. 复制仓库
git clone https://github.com/ccboom/boundless.git

### 2. 进入目录
cd boundless

### 3.赋予执行权限：
chmod +x setup_boundless.sh

### 4.运行脚本：
./setup_boundless.sh

### 5.进入目录
cd boundless

### 6. 编写环境文件
##### vim .env.base
##### 在export SET_VERIFIER_ADDRESS下添加两行
##### export RPC_URL=你的rpc
##### export PRIVATE_KEY=你的私钥
##### 注意上面填写私钥和rpc时和=号不要有空格

### 7. 使环境生效
source .env.base

### 8. 质押0.0001USDC进去 回guild验证角色
boundless account deposit-stake 0.0001

### 9.获得prover角色后，记得再运行
boundless account deposit 0.0000001



qui
1.如果出现 Error: Failed to deposit stake: Transaction error: contract error: HTTP error 429 with body: {"jsonrpc":"2.0","error":{"code":-32016,"message":"over rate limit"},"id":6}
更换rpc，就可以解决
