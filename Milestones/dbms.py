import mysql.connector
from tabulate import tabulate

db = mysql.connector.connect(host = 'localhost',user = 'root',passwd = '1234',database = 'finalbidmyride')
cursor = db.cursor()
flag = 1
while(flag==1):
    # print('1. Select * from rider')
    # print('2. Select * from driver')
    # print('3. Select * from vehicle')
    query = (input('Enter your query: '))
    # if(ch==1):
    #     query = "select * from rider"

    # elif(ch==2):
    #     query = "select * from driver"
    
    # elif(ch==3):
    #     query = "select * from vehicle"

        
    l = cursor.execute(query)

    num_fields = len(cursor.description)
    field_names = [i[0] for i in cursor.description]
    print (tabulate(cursor, headers=field_names))
    print('Do you want to continue?')
    flag = int(input('Enter 1 for yes and 0 for no: '))
