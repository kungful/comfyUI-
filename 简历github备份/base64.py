import base64

# 打开JPG图片文件并读取内容
with open("./1.jpg", "rb") as image_file:
    encoded_string = base64.b64encode(image_file.read()).decode('utf-8')

# 将Base64编码写入TXT文件
with open("output.txt", "w") as txt_file:
    txt_file.write(encoded_string)

print("Base64编码已成功写入output.txt文件。")