CREATE TABLE "todos_example" (
  "id" serial PRIMARY KEY,
  "title" varchar(50) NOT NULL,
  "description" text NOT NULL,
  "status_id" int NOT NULL,
  "is_completed" boolean DEFAULT false,
  "deadline" timestamp NOT NULL,
  "category_id" int NOT NULL,
  "created_at" timestamp DEFAULT 'now()',
  "update_at" timestamp DEFAULT 'now()'
);

CREATE TABLE "status" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "todos" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "todos" ADD FOREIGN KEY ("status_id") REFERENCES "status" ("id");

CREATE TABLE "todos" (
  "id" serial PRIMARY KEY,
  "title" varchar(50) NOT NULL,
  "description" text NOT NULL,
  "status_id" int NOT NULL,
  "is_completed" boolean DEFAULT false,
  "deadline" timestamp NOT NULL,
  "category_id" int NOT NULL,
  "created_at" timestamp DEFAULT 'now()',
  "update_at" timestamp DEFAULT 'now()'
);

CREATE TABLE "status" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "todos" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "todos" ADD FOREIGN KEY ("status_id") REFERENCES "status" ("id");

--insertar datos

--insertar un solo dato
insert into status (name) values ('En progreso');
insert into status (name) values ('Completado')


--insertar multiples datos
insert into categories (name) values ('home'),('school'),('work'),('health');

insert into todos (
title,
description,
status_id,
deadline,
category_id,
is_completed
)values (
'Revisar proyecto',
'revisar mi proyecto para entregar el profe',
2,
'2022-08-12 12:00:00',
2,
true
),(
'Actualizar proyecto',
'revisar mi proyecto para entregar el profe con los datos actualizados',
1,
'2022-08-12 12:00:00',
2,
false
),(
'Ponerme al Dia en nodejs',
'ponerme al dia con la entrega de todos los proyectos',
1,
'2022-08-12 12:00:00',
2,
false
),(
'Hacer Compras para casa y perros',
'comprar mercado y quido para los perros',
1,
'2022-08-12 12:00:00',
1,
false
),(
'Entregar modelado 3do',
'revisar mi proyecto para entregar con los datos actualizados',
2,
'2022-08-12 12:00:00',
3,
true
),(
'Salir a correr con mis perros',
'hacer ejercicio con los perros para bajar de peso',
1,
'2022-08-12 12:00:00',
4,
false
);