import mysql.connector

def print_user(user):
    
    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "hello_mysql",
        "user": "root",
        "password": "juVAPWhWj7fDy"
    }

    # config = {
    #     "host": "b1f8owhubx3p0ja2zhtt-mysql.services.clever-cloud.com",
    #     "port": "3306",
    #     "database": "b1f8owhubx3p0ja2zhtt",
    #     "user": "ubpla7pjxgcnoshc",
    #     "password": "DvrHUQnk3PFFxXR1I5vd"
    # }

    try:
        connection = mysql.connector.connect(**config)
        cursor = connection.cursor()

        # Consulta segura con parámetros
        query = "SELECT * FROM users WHERE name = %s;"
        print(query)
        cursor.execute(query, (user,))

        result = cursor.fetchall()
        for row in result:
            print(row)

    except mysql.connector.Error as err:
        print("Error al conectar o ejecutar la consulta:", err)

    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()

# Llamada a la función
print_user("Oskar")
#print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")
