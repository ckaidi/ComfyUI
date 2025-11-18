./download.bat

# 5090版本
git clone --depth=1 --branch=master https://githubfast.com/ckaidi/ComfyUI.git

cd Comfyui
python -m venv venv

#python依赖
venv/scripts/pip3 install --timeout=3000 --no-cache-dir torch==2.7.0 --index-url https://download.pytorch.org/whl/cu126
venv/scripts/pip3 install --timeout=3000 --no-cache-dir torchvision==0.22.0 --index-url https://download.pytorch.org/whl/cu126
venv/scripts/pip3 install --timeout=3000 --no-cache-dir torchaudio==2.7.0 --index-url https://download.pytorch.org/whl/cu126

venv/scripts/pip3 install --timeout=3000 --no-cache-dir xformers==0.0.30 --index-url https://download.pytorch.org/whl/cu126
venv/scripts/pip3 install models\install_files\nunchaku-1.0.1+torch2.7-cp311-cp311-win_amd64.whl
venv/scripts/pip3 install -r requirements.txt

./update.bat