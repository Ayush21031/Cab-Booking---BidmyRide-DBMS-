import mysql.connector as mysql
import datetime

conn = mysql.connect(host="localhost", user="root", passwd="1234", database="finalbidmyride_copy")
cursor = conn.cursor()
# # username = "9610356226"
# # password = "kinjOoeJkn"
# # c = "SELECT * FROM rider WHERE Mobile_no=%s"
# # cursor.execute(c, (username,))
# # rows = cursor.fetchall()
# # print(rows)
# def func1():
 
#     pick_X = 12
#     pick_y = 12
#     drop_X = 13
#     drop_y = 13
#     preference = "Current_Rating"
#     vehicle_type = "sedan"
#     f = open("book_details.txt", "w")
#     f.write(str(pick_X))
#     f.write("\n")
#     f.write(str(pick_y))
#     f.write("\n")
#     f.write(str(drop_X))
#     f.write("\n")
#     f.write(str(drop_y))
#     f.write("\n")
#     f.write(preference)
#     f.write("\n")
#     f.write(vehicle_type)
#     f.close()

# def func2():

#     f = open("book_details.txt", "r")
#     pick_X = f.readline()
#     pick_y = f.readline()
#     drop_X = f.readline()
#     drop_y = f.readline()
#     preference = f.readline()
#     vehicle_type = f.readline()
#     f.close()
#     print(pick_X, pick_y, drop_X, drop_y, preference, vehicle_type)
#     distance = ((int(drop_X)-int(pick_X))**2 + (int(drop_y)-int(pick_y))**2)**0.5
#     query = "Select d.* from driver d join vehicle v on d.Vehicle_id = v.vehicle_id where d.Status = 1 and v.type = '{}' order by d.{} DESC;".format(vehicle_type,preference)
#     print(query)
#     cursor.execute(query)
#     r = cursor.fetchall()
#     driver = r[0]
#     driver_id = driver[0]
#     driver_name = driver[1]
#     driver_mobile = driver[2]
#     age = driver[5]
#     sex = driver[9]
#     vehicle_id = driver[10]
#     print(driver_name,age,sex,vehicle_id,driver_mobile)
#     query = "Select * from vehicle where vehicle_id = '{}'".format(vehicle_id)
#     cursor.execute(query)
#     r = cursor.fetchall()
#     car_name = r[0][1]
#     car_type = r[0][2]
#     print(car_name,car_type)
#     query = "select rate"

# func1()
# func2()

# query = "select max(request_id) from request"
# cursor.execute(query)
# r = cursor.fetchall()
# print(r[0][0],(int(r[0][0])+1))



# username = '9610356226'
# query = "Select * from rider where Mobile_no=%s"
# cursor.execute(query, (username,))
# r = cursor.fetchall()
# print(r[0][0])
# # url = "/dashboard?name={}".format(r[0][0])
# f = open("details.txt", "w")
# f.write(r[0][0])
# f.write("\n")
# f.write(r[0][1])
# f.close()



# f = open("details.txt", "r")
# rider_id = f.readline()[:-1]
# name = f.readline()
# f.close()
# query = "Select * from rider where rider_id='{}';".format(rider_id)
# cursor.execute(query)
# r = cursor.fetchall()
# print(query)
# print(r)
# name = r[0][1]
# mobile = r[0][2]
# email = r[0][3]
# age = r[0][4]
# country = r[0][5]
# sex = r[0][8]
# curr_xp = r[0][9]
# curr_yp = r[0][10]
# print(name,mobile,email,age,country,sex,curr_xp,curr_yp)

# pick_X = 12
# pick_y = 12
# drop_X = 13
# drop_y = 13
# preference = "Current_Rating"
# vehicle_type = "sedan"
# query = "select max(request_id) from request"
# cursor.execute(query)
# r = cursor.fetchall()
# request_id = str(int(r[0][0]) + 1)

# f = open("details.txt", "r")
# rider_id = f.readline()[:-1]
# f.close()
# p = 0
# if(preference=="Current_Rating"):
#     p = 1
# elif(preference=="Price"):
#     p = 2
# elif(preference=="Experience"):
#     p = 3
# query = "insert into request (request_id,rider_id,preference,preffered_vehicle,pickup_location_x,pickup_location_y,drop_location_x,drop_location_y,status) values ('{}','{}',{},'{}',{},{},{},{},{})".format(request_id,rider_id,int(p),vehicle_type,int(pick_X),int(pick_y),int(drop_X),int(drop_y),int(1))
# cursor.execute(query)
# conn.commit()
# f = open("request_details.txt", "w")
# f.write(str(request_id))
# f.write("\n")
# f.write(str(rider_id))
# f.write("\n")
# f.write(str(pick_X))
# f.write("\n")
# f.write(str(pick_y))
# f.write("\n")
# f.write(str(drop_X))
# f.write("\n")
# f.write(str(drop_y))
# f.write("\n")
# f.write(str(p))
# f.write("\n")
# f.write(str(vehicle_type))
# f.write("\n")
# f.write(str(1))
# f.close()
# print("\n-------------Request Entered into Request table-----------\n")





# f = open("book_details.txt", "r")
# k = open("trip_details.txt", "w")
# l = open("details.txt", "r")
# pick_X = f.readline()
# pick_y = f.readline()
# drop_X = f.readline()
# drop_y = f.readline()
# preference = f.readline()
# vehicle_type = f.readline()
# f.close()
# distance = ((int(drop_X)-int(pick_X))**2 + (int(drop_y)-int(pick_y))**2)**0.5
# query = "Select d.* from driver d join vehicle v on d.Vehicle_id = v.vehicle_id where d.Status = 1 and v.type = '{}' order by d.{} DESC;".format(vehicle_type,preference)
# # add if else condition for the query

# cursor.execute(query)
# r = cursor.fetchall()
# driver = r[0]
# driver_id = driver[0]
# driver_name = driver[1]
# driver_mobile = driver[2]
# age = driver[5]
# sex = driver[9]
# vehicle_id = driver[10]
# driver_rate = driver[13]

# query = "Select * from vehicle where vehicle_id = '{}'".format(vehicle_id)
# cursor.execute(query)
# r = cursor.fetchall()
# car_name = r[0][1]
# car_type = r[0][2]
# rider_id = l.readline()[:-1]
# rider_name = l.readline()
# l.close()
# print("details done")
# f = open("trip_details.txt","w")
# f.write(str(distance))
# f.write("\n")
# f.write(str(driver_rate*distance))
# f.write("\n")
# f.write(str(driver_id))
# f.write("\n")
# f.write(str(rider_id))
# f.write("\n")
# f.write(str(driver_name))
# f.write("\n")
# f.write(str(rider_name))
# f.close()

# curr = datetime.datetime.now()
# date_time = curr.strftime("%Y-%m-%d %H:%M:%S")
# print(date_time)
query = "select * from billing where rider_id = '160'"
cursor.execute(query)
r = cursor.fetchall()
print(r)