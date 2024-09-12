import urllib.request
import os
import winsound

# 播放一个WAV文件
winsound.PlaySound('path_to_your_file.wav', winsound.SND_FILENAME)
# 定义音频文件的URL
url = "https://github.com/kungful/comfyUI-/blob/46ea3ddfb70b12624004318ff2d4a1134725a2e8/jie.wav?raw=true"

# 定义本地文件路径（相对路径）
local_file_path = "jie.wav"

# 检查本地文件是否存在
if not os.path.exists(local_file_path):
    print("File does not exist. Downloading...")
    try:
        # 使用urllib.request模块下载音频文件
        urllib.request.urlretrieve(url, local_file_path)
        print("Download complete.")
    except Exception as e:
        print(f"Error occurred while downloading: {e}")
else:
    print("File already exists. Skipping download.")

# 获取当前工作目录
current_directory = os.getcwd()

# 组合路径
full_path = os.path.join(current_directory, local_file_path)

# 播放一个WAV文件
winsound.PlaySound(full_path, winsound.SND_FILENAME)

# 输出结果
outputs[0] = full_path

# 使用os模块调用系统命令播放音频文件
#if os.path.exists(local_file_path):
    #os.system("start jie.wav")  # 适用于Windows
    # os.system("afplay jie.wav")  # 适用于macOS
    # os.system("aplay jie.wav")  # 适用于Linux
