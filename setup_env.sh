#!/bin/bash
# ================================
# Jupyter + VS Code Setup Script (Ubuntu)
# Author: Mwebaza Tony
# ================================

# Stop on first error
set -e

echo "🔧 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing core dependencies..."
sudo apt install -y python3 python3-pip python3-venv build-essential

# Create virtual environment
ENV_NAME=".venv"
echo "🐍 Creating virtual environment: $ENV_NAME"
python3 -m venv $ENV_NAME

# Activate environment
source $ENV_NAME/bin/activate

echo "⚙️ Upgrading pip..."
pip install --upgrade pip

echo "📚 Installing Jupyter + ipykernel..."
pip install notebook jupyterlab ipykernel

echo "📊 Installing common data science libraries..."
pip install numpy pandas matplotlib seaborn scikit-learn

echo "🧠 Registering environment kernel with Jupyter..."
python -m ipykernel install --user --name=$ENV_NAME

# Deactivate virtual environment
deactivate

echo "✅ Setup complete!"
echo "➡️ Next steps:"
echo "1. Open VS Code in this folder:  code ."
echo "2. In your .ipynb notebook, click 'Select Kernel' and choose '$ENV_NAME'."
echo "3. Run a test cell: print('Jupyter is working!')"

