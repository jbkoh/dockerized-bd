#!/srv/buildingdepot/venv/bin/python2.7

from pymongo import MongoClient
from werkzeug.security import generate_password_hash

client = MongoClient('172.17.0.1')
db = client.buildingdepot
db.user.create_index('email', unique=True)
if not db.user.find({'email':'admin@buildingdepot.org'}).count():
    print('hello admin')
    db.user.insert({"email":"admin@buildingdepot.org",
        "password":generate_password_hash("admin"),
        "first_name":"Admin",
        "first_login":True,
        "role":"super"})
if not db.data_service.find({'name': 'ds1'}).count():
    print('hello ds')
    db.data_service.insert({'name':'ds1',
        'description':'',
#        'host':'127.0.0.1',
        'host':'172.17.0.1',
        'port':82,
        'buildings':[],
        'admins':[]})
