-- CreateEnum
CREATE TYPE "GamePaywall" AS ENUM ('FREE', 'PREMIUM');

-- AlterTable
ALTER TABLE "Game" ADD COLUMN     "paywall" "GamePaywall" NOT NULL DEFAULT 'FREE';
