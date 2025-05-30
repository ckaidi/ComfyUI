git pull
venv/Scripts/python.exe -m pip install --upgrade pip
venv/scripts/pip3 install --timeout=300 -r requirements.txt

cd custom_nodes

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Crystools.git
cd ComfyUI-Crystools
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Custom-Scripts.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Easy-Use.git
cd ComfyUI-Easy-Use
git pull
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfy-image-saver.git
cd comfy-image-saver
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui_controlnet_aux.git
cd comfyui_controlnet_aux
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui-mixlab-nodes.git
cd comfyui-mixlab-nodes
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Kolors-MZ.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_IPAdapter_plus.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_Comfyroll_CustomNodes.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui-ollama.git
cd comfyui-ollama
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/masquerade-nodes-comfyui.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/was-node-suite-comfyui.git
cd was-node-suite-comfyui
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/efficiency-nodes-comfyui.git
cd efficiency-nodes-comfyui
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_essentials.git
cd ComfyUI_essentials
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=master https://githubfast.com/ckaidi/ComfyUI_Custom_Nodes_AlekPet.git
cd ComfyUI_Custom_Nodes_AlekPet
git pull

cd ArgosTranslateNode
../../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

cd DeepTranslatorNode
../../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

cd GoogleTranslateNode
../../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

cd ..

git clone --depth=1 --branch=master https://githubfast.com/ckaidi/Derfuu_ComfyUI_ModdedNodes.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/Comfyui_TTP_Toolset.git

git clone --depth=1 --branch=Main https://githubfast.com/ckaidi/ComfyUI-Impact-Pack.git
cd ComfyUI-Impact-Pack
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-KJNodes.git
cd ComfyUI-KJNodes
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Inpaint-CropAndStitch.git
cd ComfyUI-Inpaint-CropAndStitch
git pull
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Manager.git
cd ComfyUI-Manager
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Manager.git
cd ComfyUI-Manager
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-WanVideoStartEndFrames.git
cd ComfyUI-WanVideoStartEndFrames
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-WanVideoWrapper.git
cd ComfyUI-WanVideoWrapper
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Apt_Preset.git
cd ComfyUI-Apt_Preset
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_LayerStyle.git
cd ComfyUI_LayerStyle
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-VideoHelperSuite.git
cd ComfyUI-VideoHelperSuite
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Frame-Interpolation.git
cd ComfyUI-Frame-Interpolation
../../venv/scripts/pip3 install --timeout=7200 -r requirements-with-cupy.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/cg-use-everywhere.git

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/rgthree-comfy.git
cd rgthree-comfy
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Minio.git
cd ComfyUI-Minio
git pull
../../venv/scripts/pip3 install --timeout=300 -r requirements.txt
cd ..

../venv/scripts/pip3 install --timeout=300 sageattention

cd ..

venv/scripts/pip3 install -U triton-windows

$env:MINIO_HOST = "172.16.2.16"
$env:MINIO_PORT = "9000"
$env:MINIO_ENDPOINT = "172.16.2.16:9000"
$env:MINIO_ACCESS_KEY = "STKhk4Q1q8hnVXLyz8Hz"
$env:MINIO_SECRET_KEY = "q7qfSNafLK6qwWqPW4l4bfduu1owsS3EICrXaSuZ"
$env:COMFYINPUT_BUCKET = "yjzhoutputs"
$env:COMFYOUTPUT_BUCKET = "yjzhoutputs"
$env:MINIO_SECURE = "false"

venv/scripts/python.exe -s main.py --windows-standalone-build --listen 0.0.0.0 --disable-metadata --disable-auto-launch --disable-frontend
