CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime, "updated_at" datetime, "password_digest" varchar(255));
CREATE TABLE "microposts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" varchar(255), "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
INSERT INTO schema_migrations (version) VALUES ('20140618034717');

INSERT INTO schema_migrations (version) VALUES ('20140618035009');

INSERT INTO schema_migrations (version) VALUES ('20140622053616');

INSERT INTO schema_migrations (version) VALUES ('20140622062930');

