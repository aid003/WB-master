-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nmId" INTEGER NOT NULL,
    "subject" TEXT NOT NULL,
    "soldInDay" INTEGER NOT NULL,
    "ratio" REAL NOT NULL,
    "varn" INTEGER NOT NULL,
    "danger" INTEGER NOT NULL,
    "isPublished" BOOLEAN NOT NULL DEFAULT true
);
INSERT INTO "new_Product" ("danger", "id", "isPublished", "nmId", "ratio", "soldInDay", "subject", "varn") SELECT "danger", "id", "isPublished", "nmId", "ratio", "soldInDay", "subject", "varn" FROM "Product";
DROP TABLE "Product";
ALTER TABLE "new_Product" RENAME TO "Product";
CREATE UNIQUE INDEX "Product_nmId_key" ON "Product"("nmId");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
