import express, { Request, Response } from "express";

const app = express();
const port = 3000;

// Middleware
app.use(express.json());

// 기본 루트 경로에서 "Hello World!" 응답
app.get("/", (req: Request, res: Response) => {
  res.send("Hello World!");
});

// 간단한 API 예시
app.get("/api/greet", (req: Request, res: Response) => {
  const name = req.query.name || "Guest";
  res.json({ message: `Hello, ${name}!` });
});

// POST 요청 처리 예시
app.post("/api/data", (req: Request, res: Response) => {
  const data = req.body;
  res.json({ received: data });
});

// 서버 시작
app.listen(port, () => {
  console.log(`Server is running on http:s//locassdalhost:${port}`);
});
