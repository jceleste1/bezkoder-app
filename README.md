# Spring Boot JPA MySQL - Building Rest CRUD API example

For more detail, please visit:
> [Spring Boot JPA + MySQL - Building Rest CRUD API example](https://www.bezkoder.com/spring-boot-jpa-crud-rest-api/)

> [Spring Boot JPA + PostgreSQL - Building Rest CRUD API example](https://www.bezkoder.com/spring-boot-postgresql-example/)

More Practice:
> [Spring Boot File upload example with Multipart File](https://www.bezkoder.com/spring-boot-file-upload/)

> [Spring Boot Pagination & Filter example | Spring JPA, Pageable](https://www.bezkoder.com/spring-boot-pagination-filter-jpa-pageable/)

> [Spring Data JPA Sort/Order by multiple Columns | Spring Boot](https://www.bezkoder.com/spring-data-sort-multiple-columns/)

> [Spring Boot Repository Unit Test with @DataJpaTest](https://www.bezkoder.com/spring-boot-unit-test-jpa-repo-datajpatest/)

> [Deploy Spring Boot App on AWS – Elastic Beanstalk](https://www.bezkoder.com/deploy-spring-boot-aws-eb/)

Security:
> [Spring Boot + Spring Security JWT Authentication & Authorization](https://www.bezkoder.com/spring-boot-jwt-authentication/)

Fullstack:
> [Vue.js + Spring Boot + MySQL example](https://bezkoder.com/spring-boot-vue-js-mysql/)

> [Angular 10 + Spring Boot + MySQL example](https://www.bezkoder.com/angular-10-spring-boot-crud/)

> [Angular 11 + Spring Boot + MySQL example](https://www.bezkoder.com/angular-11-spring-boot-crud/)

> [Angular 12 + Spring Boot + MySQL example](https://bezkoder.com/angular-12-spring-boot-mysql/)

> [Angular 13 + Spring Boot + MySQL example](https://www.bezkoder.com/spring-boot-angular-13-mysql/)

> [Angular 14 + Spring Boot + MySQL example](https://www.bezkoder.com/spring-boot-angular-14-mysql/)

> [Angular 15 + Spring Boot + MySQL example](https://www.bezkoder.com/spring-boot-angular-15-mysql/)

> [Angular 16 + Spring Boot + MySQL example](https://www.bezkoder.com/spring-boot-angular-16-mysql/)

> [React + Spring Boot + MySQL example](https://www.bezkoder.com/react-spring-boot-crud/)

Run both Back-end & Front-end in one place:
> [Integrate Angular with Spring Boot Rest API](https://www.bezkoder.com/integrate-angular-spring-boot/)

> [Integrate React.js with Spring Boot Rest API](https://www.bezkoder.com/integrate-reactjs-spring-boot/)

> [Integrate Vue.js with Spring Boot Rest API](https://www.bezkoder.com/integrate-vue-spring-boot/)

## Run Spring Boot application
```
mvn spring-boot:run


## Colocando na cloud
docker build -t bezkoder-app  . -f Dockerfile
```

## SQLs

CREATE TABLE tutorials (
    id INT AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    description  VARCHAR(250) NOT NULL,
    published boolean DEFAULT false ,
    PRIMARY KEY(id)
) ;

