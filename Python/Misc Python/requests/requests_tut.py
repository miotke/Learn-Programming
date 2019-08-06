import requests

r = requests.get('https://imgs.xkcd.com/comics/python.png')
w = requests.get('https://xkcd.com/353/')

# Prints the html of the url saved in the w variable
# print(w.text)


# Saves the imge from the url saved in the r variable
with open('comic.png', 'wb') as f:
    f.write(r.content)


# Prints the HTTP error code
print(r.status_code)
# Prints anything less than a 400 error as True or False
print(r.ok)
# Prints headers
# print(r.headers)


payload = {'page': 2, 'count': 25}

# Requests from HTTPBin
z = requests.get('https://httpbin.org/get', params=payload)
print(z.text)






