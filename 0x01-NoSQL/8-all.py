#!/usr/bin/env python3
""" 8-main """

def list_all(mongo_collection):
    """list all docs of collection"""
    return mongo_collection.find()
