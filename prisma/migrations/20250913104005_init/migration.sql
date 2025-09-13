/*
  Warnings:

  - You are about to drop the `StudentTaskAssignment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TeacherStudent` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TeacherTask` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "StudentTaskAssignment" DROP CONSTRAINT "StudentTaskAssignment_studentId_fkey";

-- DropForeignKey
ALTER TABLE "StudentTaskAssignment" DROP CONSTRAINT "StudentTaskAssignment_taskId_fkey";

-- DropForeignKey
ALTER TABLE "TeacherStudent" DROP CONSTRAINT "TeacherStudent_studentId_fkey";

-- DropForeignKey
ALTER TABLE "TeacherStudent" DROP CONSTRAINT "TeacherStudent_teacherId_fkey";

-- DropForeignKey
ALTER TABLE "TeacherTask" DROP CONSTRAINT "TeacherTask_teacherId_fkey";

-- DropTable
DROP TABLE "StudentTaskAssignment";

-- DropTable
DROP TABLE "TeacherStudent";

-- DropTable
DROP TABLE "TeacherTask";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "TaskResult" (
    "id" SERIAL NOT NULL,
    "userClass" INTEGER NOT NULL,
    "lang" BOOLEAN NOT NULL,
    "math" BOOLEAN NOT NULL,
    "C1" BOOLEAN NOT NULL,
    "C2" BOOLEAN NOT NULL,
    "C3" BOOLEAN NOT NULL,
    "C4" BOOLEAN NOT NULL,
    "C5" BOOLEAN NOT NULL,
    "C6" BOOLEAN NOT NULL,
    "C7" BOOLEAN NOT NULL,
    "C8" BOOLEAN NOT NULL,
    "C9" BOOLEAN NOT NULL,
    "C10" BOOLEAN NOT NULL,
    "C11" BOOLEAN NOT NULL,
    "C12" BOOLEAN NOT NULL,
    "C13" BOOLEAN NOT NULL,
    "C14" BOOLEAN NOT NULL,
    "C15" BOOLEAN NOT NULL,
    "C16" BOOLEAN NOT NULL,
    "C17" BOOLEAN NOT NULL,
    "C18" BOOLEAN NOT NULL,
    "C19" BOOLEAN NOT NULL,
    "C20" BOOLEAN NOT NULL,
    "C21" BOOLEAN NOT NULL,
    "C22" BOOLEAN NOT NULL,
    "C23" BOOLEAN NOT NULL,
    "C24" BOOLEAN NOT NULL,
    "C25" BOOLEAN NOT NULL,
    "C26" BOOLEAN NOT NULL,
    "C27" BOOLEAN NOT NULL,
    "C28" BOOLEAN NOT NULL,
    "C29" BOOLEAN NOT NULL,
    "C30" BOOLEAN NOT NULL,
    "C31" BOOLEAN NOT NULL,
    "C32" BOOLEAN NOT NULL,
    "C33" BOOLEAN NOT NULL,
    "C34" BOOLEAN NOT NULL,
    "C35" BOOLEAN NOT NULL,
    "C36" BOOLEAN NOT NULL,
    "C37" BOOLEAN NOT NULL,
    "C38" BOOLEAN NOT NULL,
    "C41" BOOLEAN NOT NULL,
    "C42" BOOLEAN NOT NULL,
    "C47" BOOLEAN NOT NULL,
    "C48" BOOLEAN NOT NULL,
    "C49" BOOLEAN NOT NULL,
    "C50" BOOLEAN NOT NULL,
    "C51" BOOLEAN NOT NULL,
    "C52" BOOLEAN NOT NULL,
    "C58" BOOLEAN NOT NULL,
    "C59" BOOLEAN NOT NULL,
    "C60" BOOLEAN NOT NULL,
    "C75" BOOLEAN NOT NULL,
    "C76" BOOLEAN NOT NULL,
    "C77" BOOLEAN NOT NULL,
    "C80" BOOLEAN NOT NULL,
    "C81" BOOLEAN NOT NULL,
    "C82" BOOLEAN NOT NULL,
    "remainder" BOOLEAN NOT NULL,
    "multTableSelection" JSONB NOT NULL,
    "correctAns" INTEGER NOT NULL,
    "totalAns" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TaskResult_pkey" PRIMARY KEY ("id")
);
