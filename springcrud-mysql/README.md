# Spring Boot CRUD with MySQL (Backend Only)

Java 17 + Spring Boot 3.3 + Spring Data JPA + MySQL + Validation.

## Prerequisites
- JDK 17+
- Maven 3.6+
- MySQL 8 running on localhost:3306

## Setup
1. Start MySQL.
2. Open `src/main/resources/application.properties` and set your MySQL
   `username` and `password` (default: root / root).
3. Run:

       mvn spring-boot:run

The database `cruddb` and table `employees` are created automatically.
API: http://localhost:8080

## Endpoints (`/api/employees`)
| Method | URL                  | Action   |
|--------|----------------------|----------|
| POST   | /api/employees       | Create   |
| GET    | /api/employees       | Read all |
| GET    | /api/employees/{id}  | Read one |
| PUT    | /api/employees/{id}  | Update   |
| DELETE | /api/employees/{id}  | Delete   |

## Sample requests
    curl -X POST localhost:8080/api/employees -H "Content-Type: application/json" \
      -d '{"name":"Arun","email":"arun@example.com","department":"IT","salary":50000}'
    curl localhost:8080/api/employees
    curl localhost:8080/api/employees/1
    curl -X PUT localhost:8080/api/employees/1 -H "Content-Type: application/json" \
      -d '{"name":"Arun K","email":"arun@example.com","department":"HR","salary":60000}'
    curl -X DELETE localhost:8080/api/employees/1

## Troubleshooting
- `Access denied for user` -> wrong username/password in application.properties.
- `Communications link failure` -> MySQL is not running or port is not 3306.
