import express from "express";
import { PrismaClient } from "@prisma/client";

const router = express.Router();
const prisma = new PrismaClient();

// POST /record
router.post("/record", async (req, res) => {
  try {
    const taskData = req.body;

    // Insert into DB
    const newRecord = await prisma.taskResult.create({
      data: {
        userClass: Number(taskData.userClass ?? -1),
        lang: taskData.lang ?? false,
        math: taskData.math ?? false,

        C1: taskData.C1 ?? false,
        C2: taskData.C2 ?? false,
        C3: taskData.C3 ?? false,
        C4: taskData.C4 ?? false,
        C5: taskData.C5 ?? false,
        C6: taskData.C6 ?? false,
        C7: taskData.C7 ?? false,
        C8: taskData.C8 ?? false,
        C9: taskData.C9 ?? false,
        C10: taskData.C10 ?? false,
        C11: taskData.C11 ?? false,
        C12: taskData.C12 ?? false,
        C13: taskData.C13 ?? false,
        C14: taskData.C14 ?? false,
        C15: taskData.C15 ?? false,
        C16: taskData.C16 ?? false,
        C17: taskData.C17 ?? false,
        C18: taskData.C18 ?? false,
        C19: taskData.C19 ?? false,
        C20: taskData.C20 ?? false,
        C21: taskData.C21 ?? false,
        C22: taskData.C22 ?? false,
        C23: taskData.C23 ?? false,
        C24: taskData.C24 ?? false,
        C25: taskData.C25 ?? false,
        C26: taskData.C26 ?? false,
        C27: taskData.C27 ?? false,
        C28: taskData.C28 ?? false,
        C29: taskData.C29 ?? false,
        C30: taskData.C30 ?? false,
        C31: taskData.C31 ?? false,
        C32: taskData.C32 ?? false,
        C33: taskData.C33 ?? false,
        C34: taskData.C34 ?? false,
        C35: taskData.C35 ?? false,
        C36: taskData.C36 ?? false,
        C37: taskData.C37 ?? false,
        C38: taskData.C38 ?? false,
        C41: taskData.C41 ?? false,
        C42: taskData.C42 ?? false,
        C47: taskData.C47 ?? false,
        C48: taskData.C48 ?? false,
        C49: taskData.C49 ?? false,
        C50: taskData.C50 ?? false,
        C51: taskData.C51 ?? false,
        C52: taskData.C52 ?? false,
        C58: taskData.C58 ?? false,
        C59: taskData.C59 ?? false,
        C60: taskData.C60 ?? false,
        C75: taskData.C75 ?? false,
        C76: taskData.C76 ?? false,
        C77: taskData.C77 ?? false,
        C80: taskData.C80 ?? false,
        C81: taskData.C81 ?? false,
        C82: taskData.C82 ?? false,

        remainder: taskData.remainder ?? false,
        multTableSelection: taskData["mult-table-selection"] ?? [],
        correctAns: taskData["correct-ans"] ?? 0,
        totalAns: taskData["total-ans"] ?? 0
      }
    });

    res.status(201).json({ message: "Task recorded successfully", id: newRecord.id });
  } catch (error) {
    console.error("Error recording task:", error);
    res.status(500).json({ error: "Failed to record task" });
  }
});

export default router;
