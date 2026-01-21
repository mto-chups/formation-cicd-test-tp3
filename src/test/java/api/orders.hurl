GET http://host.docker.internal:8080/api/orders
HTTP 200

[Asserts]
#S'assurer que c'est un JSON
header "Content-Type" == "application/json"

#S'assurer que le json contient un tableau avec 2 éléments
jsonpath "$" count == 2

#Vérifie la ligne 1
jsonpath "$[0].id" == 1
jsonpath "$[0].product" == "Laptop"
jsonpath "$[0].price" == 1200.0

#Vérifie la ligne 2
jsonpath "$[1].id" == 2
jsonpath "$[1].product" == "Mouse"
jsonpath "$[1].price" == 25.0
