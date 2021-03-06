#!/srv/buildingdepot/venv/bin/python2.7

from pymongo import MongoClient
from werkzeug.security import generate_password_hash

client = MongoClient('172.17.0.1')
db = client.buildingdepot
db.user.insert({"email":"admin@buildingdepot.org",
                "password":generate_password_hash("admin"),
                "first_name":"Admin",
                "first_login":True,
                "role":"super"})
db.data_service.insert({'name':'ds1',
                        'description':'',
                        'host':'172.0.0.1',
                        'port':82,
                        'buildings':[],
                        'admins':[]})
