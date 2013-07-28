CREATE TABLE "hosts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "hostname" varchar(255), "host_id" integer);
CREATE TABLE "incidents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "problem_id" integer, "host_id" integer, "service_id" integer, "status_id" integer, "output" varchar(255), "open" datetime, "jira_id" varchar(255), "jira_url" varchar(255), "acknowledged_by" varchar(255), "closed" datetime, "closed_by" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "services" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "service" varchar(255), "service_id" integer);
CREATE TABLE "states" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "status" varchar(255), "status_id" integer);
CREATE INDEX "index_incidents_on_jira_id" ON "incidents" ("jira_id");
CREATE INDEX "index_incidents_on_problem_id" ON "incidents" ("problem_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130710014959');

INSERT INTO schema_migrations (version) VALUES ('20130710024422');

INSERT INTO schema_migrations (version) VALUES ('20130710083638');

INSERT INTO schema_migrations (version) VALUES ('20130710122330');
