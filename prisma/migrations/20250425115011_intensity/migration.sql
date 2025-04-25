-- CreateEnum
CREATE TYPE "GameIntensity" AS ENUM ('EASY', 'NORMAL', 'HARD');

-- AlterTable
ALTER TABLE "Game" ADD COLUMN     "intensity" "GameIntensity" NOT NULL DEFAULT 'EASY';
