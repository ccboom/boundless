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
vim .env.eth-sepolia 
在export SET_VERIFIER_ADDRESS下添加两行
export RPC_URL= 你的rpc
export PRIVATE_KEY= 你的私钥

### 7. 使环境生效
source .env.eth-sepolia  

### 8.领取Sepolia 的USDC
前往 https://faucet.circle.com 

### 9. 质押10USDC进去 回guild验证角色
boundless account deposit-stake 10

### 10.获得prover角色后，记得再运行
boundless account deposit 0.1 
