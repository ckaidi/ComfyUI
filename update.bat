@echo off
REM ComfyUI Installation Script
REM This script installs ComfyUI and various custom nodes

echo Starting ComfyUI installation...

git pull
venv\Scripts\python.exe -m pip install --upgrade pip
venv\scripts\pip3 install --timeout=300 -r requirements.txt

cd custom_nodes

echo Installing ComfyUI-Crystools...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Crystools.git
cd ComfyUI-Crystools
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Custom-Scripts...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Custom-Scripts.git

echo Installing ComfyUI-Easy-Use...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Easy-Use.git
cd ComfyUI-Easy-Use
git pull
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing comfy-image-saver...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfy-image-saver.git
cd comfy-image-saver
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing comfyui_controlnet_aux...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui_controlnet_aux.git
cd comfyui_controlnet_aux
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing comfyui-mixlab-nodes...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui-mixlab-nodes.git
cd comfyui-mixlab-nodes
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Kolors-MZ...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Kolors-MZ.git

echo Installing ComfyUI_IPAdapter_plus...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_IPAdapter_plus.git

echo Installing ComfyUI_Comfyroll_CustomNodes...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_Comfyroll_CustomNodes.git

echo Installing comfyui-ollama...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/comfyui-ollama.git
cd comfyui-ollama
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing masquerade-nodes-comfyui...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/masquerade-nodes-comfyui.git

echo Installing was-node-suite-comfyui...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/was-node-suite-comfyui.git
cd was-node-suite-comfyui
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing efficiency-nodes-comfyui...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/efficiency-nodes-comfyui.git
cd efficiency-nodes-comfyui
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI_essentials...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_essentials.git
cd ComfyUI_essentials
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI_Custom_Nodes_AlekPet...
git clone --depth=1 --branch=master https://githubfast.com/ckaidi/ComfyUI_Custom_Nodes_AlekPet.git
cd ComfyUI_Custom_Nodes_AlekPet
git pull

cd ArgosTranslateNode
..\..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

cd DeepTranslatorNode
..\..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

cd GoogleTranslateNode
..\..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

cd ..

echo Installing Derfuu_ComfyUI_ModdedNodes...
git clone --depth=1 --branch=master https://githubfast.com/ckaidi/Derfuu_ComfyUI_ModdedNodes.git

echo Installing Comfyui_TTP_Toolset...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/Comfyui_TTP_Toolset.git

echo Installing ComfyUI-Impact-Pack...
git clone --depth=1 --branch=Main https://githubfast.com/ckaidi/ComfyUI-Impact-Pack.git
cd ComfyUI-Impact-Pack
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-KJNodes...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-KJNodes.git
cd ComfyUI-KJNodes
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Inpaint-CropAndStitch...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Inpaint-CropAndStitch.git
cd ComfyUI-Inpaint-CropAndStitch
git pull
cd ..

echo Installing ComfyUI-Manager...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Manager.git
cd ComfyUI-Manager
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

REM Note: Duplicate ComfyUI-Manager installation removed

echo Installing ComfyUI-WanVideoStartEndFrames...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-WanVideoStartEndFrames.git
cd ComfyUI-WanVideoStartEndFrames
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-WanVideoWrapper...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-WanVideoWrapper.git
cd ComfyUI-WanVideoWrapper
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Apt_Preset...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Apt_Preset.git
cd ComfyUI-Apt_Preset
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI_LayerStyle...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_LayerStyle.git
cd ComfyUI_LayerStyle
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI_LayerStyle_Advance...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI_LayerStyle_Advance.git
cd ComfyUI_LayerStyle_Advance
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-VideoHelperSuite...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-VideoHelperSuite.git
cd ComfyUI-VideoHelperSuite
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Frame-Interpolation...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Frame-Interpolation.git
cd ComfyUI-Frame-Interpolation
..\..\venv\scripts\pip3 install --timeout=7200 -r requirements-with-cupy.txt
cd ..

echo Installing cg-use-everywhere...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/cg-use-everywhere.git

echo Installing rgthree-comfy...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/rgthree-comfy.git
cd rgthree-comfy
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI-Minio...
git clone --depth=1 --branch=main https://githubfast.com/ckaidi/ComfyUI-Minio.git
cd ComfyUI-Minio
git pull
..\..\venv\scripts\pip3 install --timeout=300 -r requirements.txt
cd ..

echo Installing ComfyUI_AdvancedRefluxControl...
git clone --depth=1 --branch=main https://github.com/ckaidi/ComfyUI_AdvancedRefluxControl.git
cd ComfyUI_AdvancedRefluxControl
git pull
cd ..

echo Installing sageattention...
..\venv\scripts\pip3 install --timeout=300 sageattention

cd ..

echo Installing triton-windows...
venv\scripts\pip3 install -U triton-windows

echo Setting environment variables...
set MINIO_HOST=172.16.2.16
set MINIO_PORT=9000
set MINIO_ENDPOINT=172.16.2.16:9000
set MINIO_ACCESS_KEY=STKhk4Q1q8hnVXLyz8Hz
set MINIO_SECRET_KEY=q7qfSNafLK6qwWqPW4l4bfduu1owsS3EICrXaSuZ
set COMFYINPUT_BUCKET=yjzhoutputs
set COMFYOUTPUT_BUCKET=yjzhoutputs
set MINIO_SECURE=false

echo Starting ComfyUI...
venv\scripts\python.exe -s main.py --windows-standalone-build --listen 0.0.0.0 --disable-metadata --disable-auto-launch --disable-frontend

echo Installation and startup complete!
pause