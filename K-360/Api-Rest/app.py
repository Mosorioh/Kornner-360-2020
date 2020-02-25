from flask import Flask
from flask import jsonify
import json
from flask import json
import pymysql
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def home():
   return 'Index API-REST' 

@app.route ('/Pais')
def getpais():
   # Connect to the database
   connection = pymysql.connect(host='181.199.66.129',
                               user='qatest3',
                               password='Quito.2019',
                               db='K-360',
                               charset='utf8mb4',
                               cursorclass=pymysql.cursors.DictCursor)
 
   try:
       with connection.cursor() as cursor:
           # Read a single record
           sql = "SELECT * FROM `Pais` order by Nombre"
           cursor.execute(sql)
           result = cursor.fetchall()
           print(result)
       return jsonify(
           #show all data
           {"Data": result, "message": "Lista de Paises"}
           #show one result of data
           #{"Data": result[0], "message": "datos Web Change"}
           )
   finally:
       connection.close()

@app.route ('/Pais/<Id>')
def Datapais(Id):
   # Connect to the database
   connection = pymysql.connect(host='181.199.66.129',
                               user='qatest3',
                               password='Quito.2019',
                               db='K-360',
                               charset='utf8mb4',
                               cursorclass=pymysql.cursors.DictCursor)
 
   try:
       with connection.cursor() as cursor:
           # Read a single record
           sql = "SELECT * FROM `Pais`  WHERE `Id`=%s"
           cursor.execute(sql, (Id))
           result = cursor.fetchall()
           print(result)
       return jsonify(
           #show all data
           {"Data": result, "message": "Lista de Paises"}
           #show one result of data
           #{"Data": result[0], "message": "datos Web Change"}
           )
   finally:
       connection.close()

@app.route ('/Liga/<IdSelectPais>')
def getdata(IdSelectPais):
   # Connect to the database
   connection = pymysql.connect(host='181.199.66.129',
                               user='qatest3',
                               password='Quito.2019',
                               db='K-360',
                               charset='utf8mb4',
                               cursorclass=pymysql.cursors.DictCursor)
 
   try:
       with connection.cursor() as cursor:
           # Read a single record
           sql = "SELECT `Id`, `Id_Pais`, `Nombre_Liga`, `Escudo`, `Total_Categorias`, `Total_Clubes`, `Total_Jugadores`, `Total_Torneos`, `Bandera_Pais` FROM `Liga` WHERE `Id_Pais`=%s"
           cursor.execute(sql, (IdSelectPais))
           result = cursor.fetchall()
           print(result)
       return jsonify(
           #show all data
           {"Data": result, "message": "Lista de Endpoints"}
           #show one result of data
           #{"Data": result[0], "message": "datos Web Change"}
           )
   finally:
       connection.close()

@app.route ('/Liga/All')
def getalldata():
   # Connect to the database
   connection = pymysql.connect(host='181.199.66.129',
                               user='qatest3',
                               password='Quito.2019',
                               db='K-360',
                               charset='utf8mb4',
                               cursorclass=pymysql.cursors.DictCursor)
 
   try:
       with connection.cursor() as cursor:
           # Read a single record
           sql = "SELECT `Id`, `Id_Pais`, `Nombre_Liga`, `Escudo`, `Total_Categorias`, `Total_Clubes`, `Total_Jugadores`, `Total_Torneos`, `Bandera_Pais` FROM `Liga` "
           cursor.execute(sql)
           result = cursor.fetchall()
           print(result)
       return jsonify(
           #show all data
           {"Data": result, "message": "Lista de Endpoints"}
           #show one result of data
           #{"Data": result[0], "message": "datos Web Change"}
           )
   finally:
       connection.close()

@app.route ('/Jugador')
def getdataJugador():
   # Connect to the database
   connection = pymysql.connect(host='181.199.66.129',
                               user='qatest3',
                               password='Quito.2019',
                               db='K-360',
                               charset='utf8mb4',
                               cursorclass=pymysql.cursors.DictCursor)
 
   try:
       with connection.cursor() as cursor:
           # Read a single record
           sql = "SELECT * FROM `Jugador` WHERE `Id`=%s"
           cursor.execute(sql, ('1'))
           result = cursor.fetchall()
           print(result)
       return jsonify(
           #show all data
           {"Data": result, "Message": "Datos Jugador Liga"}
           #show one result of data
           #{"Data": result[0], "message": "datos Web Change"}
           )
   finally:
       connection.close()
@app.route('/test')
def test():
   return 'Pull change data 2'

if __name__ == '__main__':
   #app.run(debug=True, port=5050)
   app.run(host='192.168.100.51', debug=True, port=5050)
   #app.run(debug=True, port=5050)
   
#coemtario
 
