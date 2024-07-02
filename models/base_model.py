#!/usr/bin/python3
""" qkgmlknagklnqwgm"""
import uuid
import datetime


class BaseModel:
    """rgfvadmglcalrksgnsng"""

    def __init__(self):
        """ajsnfkasnv"""
        id = str(uuid.uuid4())
        created_at = datetime.datetime.now()
        updated_at = datetime.datetime.now()

    def __str__(self, cls):
        """asknvlasndglsvm"""
        return "[{}] ({}) {}".format(cls.__name__, self.id, self.__dict__())
    
    def save(self):
        """sfdkjsflkjsdf"""
        self.updated_at = datetime.datetime.now()
    