import express from "express";
import cors from "cors";
import taskRecordingRoutes from "./routes/taskRecordingRoutes.js";

const app = express();
const PORT = 5000;

app.use(cors());
app.use(express.json());
app.use("/", taskRecordingRoutes); // Mount the router

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
