#!/usr/bin/env python2
# -*- coding:Utf-8 -*- 

# Adequin Renaud
# 26/09/2013




import datetime
import time

def affichage(timee):

	'''time = datetime.datetime.strftime(format2)
	time = timee.datetime.strftime('%d %H:%M:%S')
	print timee'''


def diff(date1):

	fmt = '%Y-%m-%d %H:%M:%S'
	date1 = datetime.datetime.strptime(date1, fmt)
	date2 = datetime.datetime.now()
	#date2 = date2.strftime("%Y-%m-%d %H:%M")
	print (date1-date2)
	#return (date1-date2).strptime((date1-date2), fmt)

def main() :

	timee =diff('2013-10-26 15:10:00')
	affichage(timee)
	
	#while 1:
		
		#time.sleep(1)
		#pass




## APPEL DU MAIN    
if __name__ == "__main__":
    main()
