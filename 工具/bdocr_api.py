from Lib import *
import requests 
import base64


# client_id 为官网获取的AK， client_secret 为官网获取的SK
ak = "h6e4qQwGNwwpP5iDUPI5tbdD"
sk = "bed0UE3v30Y6jkh92MNM5kTgJxkLetGV"
host = f'https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id={ak}&client_secret={sk}'
response = requests.get(host)
access_token = response.json()["access_token"]

def ocr(data):
    if type(data) == type(""):
        data = open_file_b(data)
    request_url = "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic"
    img = base64.b64encode(data)
    params = {"image":img,
              "language_type": "JAP"}
    request_url = request_url + "?access_token=" + access_token
    headers = {'content-type': 'application/x-www-form-urlencoded'}
    response = requests.post(request_url, data=params, headers=headers).json()
    out = []
    for i in response["words_result"]:
        out.append(i.get("words",""))
    return "".join(out)

if __name__ == "__main__":
    print(ocr('GGD_conved\sel001.ggp.png'))