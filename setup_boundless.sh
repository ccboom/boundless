#!/bin/bash
set -e

echo "🚀 开始安装 Boundless 环境..."

# 安装依赖
echo "🔧 安装基础依赖..."
sudo apt-get update
sudo apt-get install -y git curl build-essential libssl-dev pkg-config

# 克隆仓库
echo "📦 克隆 Boundless 仓库..."
git clone https://github.com/boundless-xyz/boundless
cd boundless
git checkout release-0.10

# 安装 Rust
echo "🦀 安装 Rust 工具链..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

# 安装 Risc0
echo ".Transactional 安装 Risc0 工具..."
curl -L https://risczero.com/install | bash
export PATH="$HOME/.risc0/bin:$PATH"
rzup install

# 安装 Bento 客户端
echo "🔌 安装 Bento 客户端..."
cargo install --git https://github.com/risc0/risc0 bento-client --bin bento_cli --force

# 配置环境变量
echo "⚙️ 配置环境变量..."
export PATH="$HOME/.cargo/bin:$PATH"
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.risc0/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# 安装 Boundless CLI
echo "🛠️ 安装 Boundless CLI..."
cargo install --locked boundless-cli --force

# 清理
cd ..
echo "✅ 安装完成！"
echo "请运行以下命令验证安装："
echo "bento_cli --version"
echo "boundless-cli --version"
