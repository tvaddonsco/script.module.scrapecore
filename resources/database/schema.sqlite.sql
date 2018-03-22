CREATE TABLE IF NOT EXISTS "version" (
	"db_version" INTEGER DEFAULT 1 UNIQUE,
	PRIMARY KEY(db_version)
);

CREATE TABLE IF NOT EXISTS "scrapers" (
	"scraper_id" INTEGER PRIMARY KEY AUTOINCREMENT,
	"name" TEXT,
	"service" TEXT,
	"enabled" INTEGER DEFAULT 0,
	"settings" TEXT,
	"ts" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	UNIQUE (service)
);