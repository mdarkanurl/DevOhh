/*
  Warnings:

  - Changed the type of `status` on the `Submit` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterEnum
ALTER TYPE "SubmitStatus" ADD VALUE 'Failed';

-- AlterTable
ALTER TABLE "Submit" DROP COLUMN "status",
ADD COLUMN     "status" "SubmitStatus" NOT NULL;
