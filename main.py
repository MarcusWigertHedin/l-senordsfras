import secrets
from configparser import ConfigParser

config = ConfigParser()
config.read ('config.ini')

dictionary = config.get('main', 'dictionary')
wordcount = config.getint('main', 'wordcount')
separator = config.get('main', 'separator')

with open(dictionary) as f:
	words = [word.strip() for word in f]
	password = separator.join(secrets.choice(words) for i in range(wordcount))
	print(password)