-- CreateTable
CREATE TABLE "Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nmId" INTEGER NOT NULL,
    "subject" TEXT NOT NULL,
    "soldInDay" INTEGER NOT NULL,
    "ratio" REAL NOT NULL,
    "varn" INTEGER NOT NULL,
    "danger" INTEGER NOT NULL,
    "isPublished" BOOLEAN NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Product_nmId_key" ON "Product"("nmId");
