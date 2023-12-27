#curl -X 'GET'  'http://192.168.56.56:8000/v1/user'  -H 'accept: application/json'  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiJBaHNaS0w0VGtiIiwiZXhwIjoxNzExNDQxNzg2LCJuYmYiOjE3MDM2NjU3ODYsImlhdCI6MTcwMzY2NTc4Nn0.uX8dQIpoKs4ZAAE43VB9kEU_ZP3ab7H4-dz7yEjGYec'

ab -n 100000 -c 8000  -H 'accept: application/json'  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiJBaHNaS0w0VGtiIiwiZXhwIjoxNzExNDQxNzg2LCJuYmYiOjE3MDM2NjU3ODYsImlhdCI6MTcwMzY2NTc4Nn0.uX8dQIpoKs4ZAAE43VB9kEU_ZP3ab7H4-dz7yEjGYec' 'http://192.168.56.56:8000/v1/user'  
