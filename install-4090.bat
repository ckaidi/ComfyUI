./download.bat

# 5090版本
git clone --depth=1 --branch=master https://githubfast.com/ckaidi/ComfyUI.git

cd Comfyui
python -m venv venv

#python依赖
venv/scripts/pip3 install --timeout=3000 --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126
venv/scripts/pip3 install --timeout=3000 --no-cache-dir xformers --index-url https://download.pytorch.org/whl/cu126
venv/scripts/pip3 install -r requirements.txt

./update.bat