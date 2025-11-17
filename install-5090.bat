./download.bat

# 5090版本
git clone --depth=1 --branch=master https://githubfast.com/ckaidi/ComfyUI.git

cd Comfyui
python -m venv venv

#python依赖
venv/scripts/pip3 install --timeout=3000 --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128
venv/scripts/pip3 install --timeout=3000 --no-cache-dir xformers --index-url https://download.pytorch.org/whl/cu128
venv/scripts/pip3 install models\install_files\nunchaku-1.0.1+torch2.7-cp311-cp311-win_amd64.whl
venv/scripts/pip3 install -r requirements.txt

./update.bat