如果遇到缺失节点，请到[comfyUI manager](https://github.com/ltdrdata/ComfyUI-Manager.git)安装。有些全新节点或者是节点作者维护移交给其它开发者都可能缺失或者报错，这时候需要通过manager导航节点项目地址看文档，进行手动安装依赖或者卸载重装。依赖文件`requirements.txt`请使用comfyUI的嵌入式python或者虚拟环境python进行安装。

从零部署嵌入式python包注意事项，安装pip工具的时候需要把pth的文件注释掉最后一行
# <big>comfyUI必备实用插件</big>
- [comfyUI官网](https://github.com/comfyanonymous/ComfyUI.git)
- [ComfyUI-Manager管理器](https://github.com/ltdrdata/ComfyUI-Manager.git)
- [comfyui-workspace-manager管理工作流](https://github.com/11cafe/comfyui-workspace-manager.git)
- [comfyui-browser浏览你生成的图像](https://github.com/talesofai/comfyui-browser.git)
- [AIGODLIKE-ComfyUI-Translation界面汉化](https://github.com/AIGODLIKE/AIGODLIKE-ComfyUI-Translation.git)
- [ComfyUI_VLM_nodes输入图像反推出自然语言](https://github.com/gokayfem/ComfyUI_VLM_nodes.git)
- [ComfyUI_IPAdapter_plus风格迁移](https://github.com/cubiq/ComfyUI_IPAdapter_plus.git)
- [comfyui_controlnet_aux预处理器](https://github.com/Fannovel16/comfyui_controlnet_aux.git)
- [这个comfyUI自带了 ComfyUI-Advanced-ControlNet好用的contrlnet](https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet.git)
- [ComfyUI-Flowty-TripoSR单图推理出3d模型obj](https://github.com/flowtyone/ComfyUI-Flowty-TripoSR.git)
- [sdxl_prompt_styler风格提示词](https://github.com/twri/sdxl_prompt_styler.git)
- [图像按边放大Derfuu_ComfyUI_ModdedNodes这个插件需要手动下载压缩包解压到插件目录解压](https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes/tree/588f4ccbe2169298099e1578f6ff0d4b56d90cf8)

- 标题党计划，图层可视化调整：https://github.com/Davemane42/ComfyUI_Dave_CustomNode.git

- 另辟蹊径统一安装python插件依赖的项目：https://github.com/YanWenKun/ComfyUI-Windows-Portable.git
- ubuntu仔细挑选的防止依赖冲突的仓库：https://github.com/xingren23/ComfyUI-for-ComfyFlowApp.git
- 收集comfyui节点排名前一百个：https://github.com/liusida/top-100-comfyui.git
- 区域提示：https://github.com/huchenlei/ComfyUI_densediffusion.git
- 节点和工作流统一访问：https://github.com/Nuked88/ComfyUI-N-Sidebar.git
- 加速库依赖：onnxruntime,比如dw预处理器的onnx模型龟速就是这个需要安装，onnxruntime-gpu  然后onnxruntime支持cuda11.8最好，当你的电脑安装了cuda12.1时可能onnxruntime的库依赖报错，这时候你需要再安装一个cuda，比如11.8或者12.4。
-  xformers也是加速，目前它只支持到最高torch 2.3.0 
- 
# <big>模型</big>
- [IPadapter模型_(SDXL)](https://huggingface.co/h94/IP-Adapter/tree/main/sdxl_models)to  models/ipadapter
- [IPadapter模型_(SD1.5)](https://huggingface.co/h94/IP-Adapter/tree/main/models)to   models/ipadapter
- [Ipadapter对应的clip模型_(SDXL)](https://huggingface.co/laion/CLIP-ViT-H-14-laion2B-s32B-b79K/tree/main)to models/clip_vision
- [IPadapter对应的clip模型 (SD1.5)](https://huggingface.co/h94/IP-Adapter/tree/main/models/image_encoder)to models/clip_vison
- [这里也有汇总](https://github.com/Acly/krita-ai-diffusion/wiki/ComfyUI-Setup)

- [animatediff](https://huggingface.co/guoyww/animatediff/tree/main)
- [controlnet](https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main)
- [AnimateLCM](https://huggingface.co/wangfuyun/AnimateLCM/tree/main)
- 

# <big>krita绘画软件和comfyUI结合的插件</big>
- [krita-ai-diffusion安装在krita的插件调用comfyUI](https://github.com/Acly/krita-ai-diffusion.git)
- [comfyui-tooling-nodes安装在comfyUI,为了和krita插件进行通讯](https://github.com/Acly/comfyui-tooling-nodes.git)
- [krita-ai-tools在krita的智能选区插件](https://github.com/Acly/krita-ai-tools.git)
- [BlenderLayer将blender的图像传递到krita的三维](https://github.com/Yuntokon/BlenderLayer.git)



# <big>A1111-webUI必备插件</big>
- [stable-diffusion-webui-localization-zh_CN界面汉化](https://github.com/dtlnor/stable-diffusion-webui-localization-zh_CN.git)
- [adetailer脸部修复](https://github.com/Bing-su/adetailer.git)



# <big> 支持animatediff的1.5底模，和纯运动模型animatediff</big>
- [1.5写实底模](https://civitai.com/models/144249?modelVersionId=438858)
- [2.5D漫画底模](https://civitai.com/models/248011/astranime)
- [漫画底模](https://civitai.com/models/101254/hellokid2d)
- [伪厚涂imp](https://civitai.com/models/56680/imp)
- [动漫mistoonAnime](https://civitai.com/models/24149/mistoonanime)
- [多彩动漫而生底模helloflatcolorful2d](https://civitai.com/models/113447/helloflatcolorful2d)
- [纯运动模型animatediff名称motionmodelnsfw650存放在D:\Comfy\ComfyUI_windows_portable\ComfyUI\custom_nodes\ ComfyUI-AnimateDiff-Evolved \models或者comfyUI下的models\animatediff_models](https://civitai.com/models/139237/motion-model-experiments)
- [纯运动模型animatediff名称temporaldiff存放在D:\Comfy\ComfyUI_windows_portable\ComfyUI\custom_nodes\ ComfyUI-AnimateDiff-Evolved \models或者comfyUI下的models\animatediff_models](https://huggingface.co/CiaraRowles/TemporalDiff/tree/main)
- [纯运动模型animatediff名称v3_sd15存放在D:\Comfy\ComfyUI_windows_portable\ComfyUI\custom_nodes\ ComfyUI-AnimateDiff-Evolved \models或者comfyUI下的models\animatediff_models](https://huggingface.co/guoyww/animatediff/tree/main)
- [纯运动模型animatediff名称AnimateLCM存放在D:\Comfy\ComfyUI_windows_portable\ComfyUI\custom_nodes\ ComfyUI-AnimateDiff-Evolved \models或者comfyUI下的models\animatediff_models](https://huggingface.co/wangfuyun/AnimateLCM/tree/main)
- [animateLCM视频教程](https://www.youtube.com/watch?v=W1KL115ASmQ)

  # <big> SDXL模型</big>
- [添加细节TTPLanet_SDXL_Controlnet_Tile_Realistic](https://civitai.com/models/330313/ttplanetsdxlcontrolnettilerealistic)(https://huggingface.co/TTPlanet/TTPLanet_SDXL_Controlnet_Tile_Realistic)
- SDXL放大工作流：https://openart.ai/workflows/gJQkI6ttORrWCPAiTaVO
- SDXL 线条TEED预处理器：https://github.com/TheMistoAI/ComfyUI-Anyline    与之搭配的模型：https://huggingface.co/TheMistoAI/MistoLine
- 泛化最好SDXL线条controlnet模型：https://huggingface.co/TheMistoAI/MistoLine
- 
