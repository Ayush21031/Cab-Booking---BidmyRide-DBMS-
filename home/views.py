from django.shortcuts import render, HttpResponse, HttpResponseRedirect
import mysql.connector as mysql
import datetime
from math import radians, sin, cos, sqrt, atan2
import re

conn = mysql.connect(host="localhost", user="root", passwd="1234", database="finalbidmyride_copy")
cursor = conn.cursor()

def dist(lat1, lon1, lat2, lon2):
    lat1, lon1, lat2, lon2 = map(radians, [lat1, lon1, lat2, lon2])
    dlon = lon2 - lon1
    dlat = lat2 - lat1
    a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
    c = 2 * atan2(sqrt(a), sqrt(1-a))
    distance = 6371 * c
    return distance

def index(request):
    if request.POST:
        print("Inside Post")
        username = request.POST.get("username")
        password = request.POST.get("password")
        

        c = "SELECT * FROM credentials WHERE mobile_no=%s AND password=%s"
        cursor.execute(c, (username, password))
        rows = cursor.fetchall()

        if rows:
            print("Login successful")
            query = "Select * from rider where Mobile_no=%s"
            cursor.execute(query, (username,))
            r = cursor.fetchall()
            print(r)
            # url = "/dashboard?name={}".format(r[0][0])
            f = open("details.txt", "w")
            f.write(r[0][0])
            f.write("\n")
            f.write(r[0][1])
            f.close()
            return HttpResponseRedirect("dashboard")
        else:
            print("Invalid credentials")
            return HttpResponse("Invalid credentials")

    return render(request, "login.html")

def homepage(request):
    return render(request, "landing-page.html")

def dashboard(request):
    # if request.GET:
    #     name = request.GET.get("name")
    #     print(name)
        f = open("details.txt", "r")
        rider_id = f.readline()[:-1]
        name = f.readline()
        f.close()
        query = "Select * from rider where rider_id='{}'".format(rider_id)
        cursor.execute(query)
        r = cursor.fetchall()
        print(r)
        name = r[0][1]
        mobile = r[0][2]
        email = r[0][3]
        age = r[0][4]
        country = r[0][5]
        sex = r[0][8]
        curr_xp = r[0][9]
        curr_yp = r[0][10]
        query = "select * from billing where rider_id = '{}'".format(rider_id)
        cursor.execute(query)
        j = cursor.fetchall()
        # print(j)
        query = "select amount from wallet w join rider r on w.wallet_id = r.wallet_id where r.Rider_Id = '{}'".format(rider_id)
        cursor.execute(query)
        k = cursor.fetchall()
        return render(request, "user-page_2.html", {"wallet":k[0][0],"trips":j,"name": name,"mobile":mobile,"email":email,"age":age,"country":country,"sex":sex,"curr_xp":curr_xp,"curr_yp":curr_yp})

def book_now(request):

    pick_X = 12
    pick_y = 12
    drop_X = 13
    drop_y = 13
    p = 0
    preference = "Current_Rating"
    vehicle_type = "sedan"
    if request.POST:
        preference = request.POST.get("preference")
        vehicle_type = request.POST.get("car")
        pickup_lat = request.POST.get('pickup_lat')
        pickup_lng = request.POST.get('pickup_lng')
        dropoff_lat = request.POST.get('dropoff_lat')
        dropoff_lng = request.POST.get('dropoff_lng')

        pick_X = float(re.sub(r'[^\d\.]+', '', pickup_lat))
        pick_y = float(re.sub(r'[^\d\.]+', '', pickup_lng))
        drop_X = float(re.sub(r'[^\d\.]+', '', dropoff_lat))
        drop_y = float(re.sub(r'[^\d\.]+', '', dropoff_lng))
        
        print(pick_X, pick_y, drop_X, drop_y)
        distance = dist(pick_X,pick_y,drop_X,drop_y)
        print("Distance between New York City and Los Angeles is {:.2f} km".format(distance))
        if preference=="current_rating":
            p = 1
        elif preference=="price":
            p = 2
        query = "select max(request_id) from request"
        cursor.execute(query)
        r = cursor.fetchall()
        request_id = str(int(r[0][0]) + 1)

        f = open("details.txt", "r")
        rider_id = f.readline()[:-1]
        f.close()
        
        query = "insert into request (request_id,rider_id,preference,preffered_vehicle,pickup_location_x,pickup_location_y,drop_location_x,drop_location_y,status) values ('{}','{}',{},'{}',{},{},{},{},{})".format(request_id,rider_id,p,vehicle_type,pick_X,pick_y,drop_X,drop_y,1)
        cursor.execute(query)
        conn.commit()
        f = open("request_details.txt", "w")
        f.write(str(request_id))
        f.write("\n")
        f.write(str(rider_id))
        f.write("\n")
        f.write(str(pick_X))
        f.write("\n")
        f.write(str(pick_y))
        f.write("\n")
        f.write(str(drop_X))
        f.write("\n")
        f.write(str(drop_y))
        f.write("\n")
        f.write(str(p))
        f.write("\n")
        f.write(str(vehicle_type))
        f.write("\n")
        f.write(str(preference))
        f.write("\n")
        f.write(str(1))
        f.close()
        print(request_id,rider_id,p,vehicle_type,pick_X,pick_y,drop_X,drop_y,1,preference)
        print("\n-------------Request Entered into Request table-----------\n")
        return HttpResponseRedirect("driver_details")

    return render(request, "booking.html")


def driver_details(request):
    f = open("request_details.txt", "r")
    l = open("details.txt", "r")
    request_id = f.readline()[:-1]
    rider_id = f.readline()[:-1]
    pick_x = f.readline()[:-1]
    pick_y = f.readline()[:-1]
    drop_x = f.readline()[:-1]
    drop_y = f.readline()[:-1]

    pick_x = float(re.sub(r'[^\d\.]+', '', pick_x)) 
    pick_y = float(re.sub(r'[^\d\.]+', '', pick_y))
    drop_x = float(re.sub(r'[^\d\.]+', '', drop_x))
    drop_y = float(re.sub(r'[^\d\.]+', '', drop_y))
    distance = dist(pick_x, pick_y, drop_x, drop_y)
    print(distance)
    p = f.readline()[:-1]
    vehicle_type = f.readline()[:-1]
    preference = f.readline()[:-1]
    f.close()

    query = "Select d.* from driver d join vehicle v on d.Vehicle_id = v.vehicle_id where d.Status = 1 and v.type = '{}' order by d.Current_Rating DESC;".format(vehicle_type)

    if p==2:
        query = "Select d.* from driver d join vehicle v on d.Vehicle_id = v.vehicle_id where d.Status = 1 and v.type = '{}' order by d.Rate ASC;".format(vehicle_type)

    cursor.execute(query)
    r = cursor.fetchall()
    driver = r[0]
    driver_id = driver[0]
    driver_name = driver[1]
    driver_mobile = driver[2]
    age = driver[5]
    sex = driver[9]
    vehicle_id = driver[10]
    driver_rate = driver[13]

    query = "Select * from vehicle where vehicle_id = '{}'".format(vehicle_id)
    cursor.execute(query)
    r = cursor.fetchall()
    car_name = r[0][1]
    car_type = r[0][2]

    query = "select amount from wallet w join rider r on w.wallet_id = r.wallet_id where r.Rider_Id = '{}'".format(rider_id)
    cursor.execute(query)
    r = cursor.fetchall()
    wallet_amount = int(r[0][0])

    rider_id = l.readline()[:-1]
    rider_name = l.readline()
    l.close()

    f = open("trip_details.txt","w")

    f.write(str(request_id))
    f.write("\n")
    f.write(str(driver_id))
    f.write("\n")
    f.write(str(driver_rate*distance))
    f.write("\n")
    curr = datetime.datetime.now()
    date_time = curr.strftime("%Y-%m-%d %H:%M:%S")
    f.write(str(date_time))
    f.write("\n")
    f.write(str(distance))
    f.write("\n")
    f.write(str(0))
    f.write("\n")
    f.write(str(rider_id))
    f.write("\n")
    f.write(str(driver_name))
    f.write("\n")
    f.write(str(rider_name))
    f.close()

    error_message = ""
    if request.POST:
        print("Inside Post")
        otp = request.POST.get("otp")
        if(otp == "1234"):
            print(otp)
            if(wallet_amount<driver_rate*distance):
                error_message = "Insufficient balance for this transaction."
            else:
                query = "insert into trip (Request_ID,Driver_ID,Fare,Date_Time,Distance,Rating) values ('{}','{}',{},'{}',{},{})".format(request_id,driver_id,driver_rate*distance,date_time,distance,0)
                cursor.execute(query)
                conn.commit()
                print("----Trip details entered into trip table-----")
                return HttpResponseRedirect("trip_details")

    return render(request, "driver_details.html",{'error_message': error_message,"driver_name":driver_name,"age":age,"gender":sex,"car_name":car_name,"car_type":car_type,"distance":distance,"driver_mobile":driver_mobile,"vehicle_id":vehicle_id})


def trip_details(request):
    
    f = open("trip_details.txt", "r")
    request_id = f.readline()[:-1]
    driver_id = f.readline()[:-1]
    fare = f.readline()[:-1]
    date_time = f.readline()[:-1]
    distance = f.readline()[:-1]
    rating = f.readline()[:-1]
    rider_id = f.readline()[:-1]
    driver_name = f.readline()[:-1]
    rider_name = f.readline()
    f.close()
    query  = "Select pickup_location_x, pickup_location_y, drop_location_x, drop_location_y from request where Request_ID = '{}'".format(request_id)
    cursor.execute(query)
    r = cursor.fetchall()
    pick_X = r[0][0]
    pick_y = r[0][1]
    drop_X = r[0][2]
    drop_y = r[0][3]

    if request.POST:
        rating = request.POST.get("rating")
        query = "update trip set Rating = {} where Request_ID = '{}'".format(rating,request_id)
        cursor.execute(query)
        conn.commit()
        query = "insert into billing (Request_ID,Driver_ID,Rider_ID,Date_Time,Distance,Fare,Pickup_Location_x,Pickup_Location_y,Drop_Location_x,Drop_Location_y) values ('{}','{}','{}','{}',{},{},{},{},{},{})".format(request_id,driver_id,rider_id,date_time,distance,fare,pick_X,pick_y,drop_X,drop_y)
        cursor.execute(query)
        conn.commit()
        return render(request,"Thanking_you.html")
    return render(request, "trip_details.html",{ "distance":distance,"fare":fare,"driver_id":driver_id,"rider_id":rider_id,"driver_name":driver_name,"rider_name":rider_name})