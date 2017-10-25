#!/srv/buildingdepot/venv/bin/python2.7

from pymongo import MongoClient
from werkzeug.security import generate_password_hash
import pdb

client = MongoClient('172.17.0.1')
#db = client.buildingdepot
db = client.get_database('buildingdepot')
#user_coll = db.user
user_coll = db.get_collection('user')
user_coll.insert_one({"email":"admin@buildingdepot.org",
                "password":generate_password_hash("admin"),
                "first_name":"Admin",
                "first_login":True,
                "role":"super"})
#ds_coll = db.data_service
ds_coll = db.get_collection('data_service')
ds_coll.insert_one({'name':'ds1',
                        'description':'',
                        'host':'172.17.0.1',
                        'port':82,
                        'buildings':[],
                        'admins':[]})
