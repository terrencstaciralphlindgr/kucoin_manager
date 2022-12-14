-- upgrade --
CREATE TABLE IF NOT EXISTS "account" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "api_key" VARCHAR(255) NOT NULL UNIQUE,
    "api_secret" VARCHAR(255) NOT NULL,
    "api_passphrase" VARCHAR(255) NOT NULL,
    "api_type" VARCHAR(20) NOT NULL  DEFAULT 'future',
    "group" VARCHAR(20),
    "created_at" TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP
) /* The Account model */;
CREATE TABLE IF NOT EXISTS "orders" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "order_id" VARCHAR(50) NOT NULL,
    "symbol" VARCHAR(20) NOT NULL,
    "side" VARCHAR(4) NOT NULL,
    "size" VARCHAR(10) NOT NULL,
    "price" VARCHAR(10) NOT NULL,
    "leverage" VARCHAR(3) NOT NULL,
    "status" VARCHAR(10) NOT NULL  DEFAULT 'open',
    "created_at" TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "account_id" INT NOT NULL REFERENCES "account" ("id") ON DELETE CASCADE
) /* The Order model */;
CREATE TABLE IF NOT EXISTS "aerich" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "version" VARCHAR(255) NOT NULL,
    "app" VARCHAR(100) NOT NULL,
    "content" JSON NOT NULL
);
