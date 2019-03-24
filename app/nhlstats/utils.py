import json
import os.path

secrets = None

def getSecrets(file = None):
    global secrets

    if secrets == None:
        if file == None:
            file = "/Users/grogers/Documents/Source/NHLStats/etc/secrets.json"

        if os.path.isfile(file):
            with open(file) as json_secrets:
                secrets = json.load(json_secrets)

    return secrets