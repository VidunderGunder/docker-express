import express, { Express, Request, Response } from "express";
import dotenv from "dotenv";
import cors from "cors";

dotenv.config();

const app: Express = express();
const port = process.env.PORT;

app.use(cors());

app.get("/", (req: Request, res: Response) => {
  res.send('Express says "Hi!"');
});

app.listen(port, () => {
  console.log(`⚡️[express]: Server is running at http://localhost:${port}`);
});
