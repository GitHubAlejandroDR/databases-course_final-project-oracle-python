# -*- coding: utf-8 -*-
"""
Created on Wed Jun  2 17:58:15 2021

@author: aleja
"""

import cx_Oracle
##cx_Oracle.init_oracle_client(lib_dir=r"C:\Users\aleja\Desktop\Asignaturas\BASES DE DATOS\instantclient-basic-windows.x64-19.11.0.0.0dbru\instantclient_19_11")

dsnStr = cx_Oracle.makedsn("afrodita.lcc.uma.es","1521","bdsalud")
conexion = cx_Oracle.connect(user="U29614238j",password="29614238j", dsn=dsnStr)
print(conexion.version)

def consultaInsertparametros(conexion, numeroTabla, values):
    if numeroTabla == 1:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO paciente (genero, telefono, nss, edad) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    if numeroTabla == 2:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO especialista (especialista, paciente_nss) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    if numeroTabla == 3:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    if numeroTabla == 4:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    if numeroTabla == 5:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
def consultaInsertRelacion(conexion, numeroTabla, values):
    if numeroTabla == 1:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    if numeroTabla == 2:
        cursor = conexion.cursor()
        cursor.execute("INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES ("+values+")")
        cursor.execute("commit")
        cursor.close()
    
def consulta3(conexion, medicamento):
    cursor = conexion.cursor()
    cursor.execute("select paciente.genero, count(paciente.nss) from paciente, farmacia where  farmacia.paciente_nss = paciente.nss and farmacia.nobmedicamento = '"+medicamento+"' group by paciente.genero"
)
    for resultado in cursor:
        print(resultado)
    cursor.close()
    
def consulta4(conexion, distrito):
    cursor = conexion.cursor()
    cursor.execute("select * from diagimagenes where diagimagenes.nconsulta  in ( select consulta.nconsulta from consulta where consulta.distrito = '"+distrito+"' )"
)
    for resultado in cursor:
        print(resultado)
    cursor.close()
    
def consulta5(conexion, especialidad):
    cursor = conexion.cursor()
    cursor.execute("select consulta.nconsulta from consulta where consulta.nconsulta in ( select consulta.nconsulta from consulta, adinsitu where adinsitu.tespeciales_ntratamiento = '"+especialidad+"' and adinsitu.consulta_nconsulta = consulta.nconsulta) order by consulta.nconsulta asc")
    for resultado in cursor:
        print(resultado)
    cursor.close()

    
print("'''GESTOR DE BASE DE DATOS'''\n")
print("CONSULTAS PREDEFINIDAS DISPONIBLES:")
print(" ")
print("1.-Insertar datos en tablas")
print("2.-Insertar datos en relaciones")
print("3.-Consultar datos sobre el numero de pacientes que deben de tomar un medicamento dado por parámetro")
print("4.-Consultar datos sobre los diagnosticos de imagen realizados en una consulta de un distrito dado por parámetro")
print("5.-Consultar los numero de consulta que realizen un tratamiento especial dado por parámetros")
print("6.-Salir de aplicación ")
print(" ")
print("¿ Cual consulta desea ejecutar ?")
opcion = int(input("Introduzca su elección: "))
        
while opcion != 6:
    if opcion == 1:
        print("Consulta 1")
        print("Tablas disponibles:\n 1) Paciente \n 2) Especialista \n 3) Especialidades \n 4) Consulta \n 5) TEspeciales \n")
        print("¿ En que tabla desea introducir datos ?") 
        opcionTabla = int(input("Número: "))
        if opcionTabla == 1:
            print("Datos necesarios:")  
            dato1 = input("Género (Mujer o Hombre) : ")
            dato2 = input("Teléfono: ")
            dato3 = input("NSS: ")
            dato4 = input("Edad: ")
            cadena = "'"+dato1+"',"+dato2+","+dato3+","+dato4
            consultaInsertparametros(conexion,opcionTabla, cadena)
        if opcionTabla == 2:
            print("Datos necesarios: ")
            dato1 = input("Nombre especialista : ")
            dato2 = input("Paciente_nss: ")
            cadena = "'"+dato1+"',"+dato2
            consultaInsertparametros(conexion, opcionTabla, cadena)
        if opcionTabla == 3:
             print("Datos necesarios: ")
             dato1 = input("Tipo especialidad : ")
             dato2 = input("Nombre especialista: ")
             cadena = "'"+dato1+"','"+dato1+"'"
             consultaInsertparametros(conexion, opcionTabla, cadena)
        if opcionTabla == 4:
             print("Datos necesarios: ")
             dato1 = input("Número consulta: ")
             dato2 = input("Distrito: ")
             dato3 = input("Máxima capacidad: ")
             cadena = ""+dato1+",'"+dato2+"',"+dato3
             consultaInsertparametros(conexion, opcionTabla, cadena)
        if opcionTabla == 5:
             print("Datos necesarios: ")
             dato1 = input("Nombre tratamiento: ")
             dato2 = input("Tipo tratamiento ( Especilidad encargada ): ")
             cadena = "'"+dato1+"','"+dato1+"'"
             consultaInsertparametros(conexion, opcionTabla, cadena)
    
    if opcion == 2:
        print("Relaciones disponibles:\n 1) Atiende \n 2) RealizaDiag \n")
        print("¿ En que tabla desea introducir datos ?") 
        opcionTabla = int(input("Número: "))
        if opcionTabla == 1:
            print("Datos necesarios:")  
            dato1 = input("Paciente_nss : ")
            dato2 = input("Número consulta: ")
            cadena = +dato1+","+dato1
            consultaInsertRelacion(conexion,opcionTabla, cadena)
        if opcionTabla == 2:
            print("Datos necesarios: ")
            dato2 = input("Nombre especialista : ")
            dato1 = input("Paciente_nss: ")
            cadena = "'"+dato1+"',"+dato2
            consultaInsertparametros(conexion, opcionTabla, cadena)
            
    if opcion == 3:
        print("Consulta 3 \n \n ¿ Qué medicamento desea consultar ?")
        opcionMedicamento = input("Introduzca el nombre del medicamento: ")
        consulta3(conexion,opcionMedicamento)
        
    if opcion == 4:
        print("consulta 4 \n \n ¿ Qué distrito desea consultar ?")
        opcionDistrito = input("Introduzca el nombre del distrito: ")
        consulta4(conexion, opcionDistrito)
        
    if opcion == 5:
        print("Consulta 5 \n \n ¿ Qúe especialidad desea consultar")
        opcionEspecialidad = input("Introduzca el nombre del tratamiento especial: ")
        consulta5(conexion, opcionEspecialidad)
    print("\n CONSULTAS PREDEFINIDAS DISPONIBLES:")
    print(" ")
    print("1.-Insertar datos en tablas")
    print("2.-Insertar datos en relaciones")
    print("3.-Consultar datos sobre el numero de pacientes que deben de tomar un medicamento dado por parámetro")
    print("4.-Consultar datos sobre los diagnosticos de imagen realizados en una consulta de un distrito dado por parámetro")
    print("5.-Consultar datos sobre las consultas que realizen un tratamiento especial dado por parámetros")
    print("6.-Salir de aplicación ")
    print(" ")   
    print("\n ¿ Cual consulta desea ejecutar ?")
    opcion = int(input("Introduzca su elección: "))



                 
conexion.close()