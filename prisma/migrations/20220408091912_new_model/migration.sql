/*
  Warnings:

  - Added the required column `screeningId` to the `Seats` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Seats" ADD COLUMN     "screeningId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Seats" ADD CONSTRAINT "Seats_screenId_fkey" FOREIGN KEY ("screenId") REFERENCES "Screen"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
