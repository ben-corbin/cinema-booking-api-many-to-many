-- CreateTable
CREATE TABLE "Seats" (
    "id" SERIAL NOT NULL,
    "screenId" INTEGER NOT NULL,
    "customerName" TEXT NOT NULL,

    CONSTRAINT "Seats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_SeatsToTicket" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_SeatsToTicket_AB_unique" ON "_SeatsToTicket"("A", "B");

-- CreateIndex
CREATE INDEX "_SeatsToTicket_B_index" ON "_SeatsToTicket"("B");

-- AddForeignKey
ALTER TABLE "_SeatsToTicket" ADD FOREIGN KEY ("A") REFERENCES "Seats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SeatsToTicket" ADD FOREIGN KEY ("B") REFERENCES "Ticket"("id") ON DELETE CASCADE ON UPDATE CASCADE;
