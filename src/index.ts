import express, { Request, Response } from 'express'
import cors from 'cors'
import dotenv from 'dotenv'
import { HashManager } from './services/HashManager'

dotenv.config()

const app = express()

app.use(cors())
app.use(express.json())

app.listen(Number(process.env.PORT) || 3003, () => {
    console.log(`Servidor rodando na porta ${process.env.PORT || 3003}`)
})

// routers das entidades

app.get("/ping", async (req: Request, res: Response) => {
    try {
      res.status(200).send({ message: "Pong!" });
    } catch (error) {
      console.log(error);
  
      if (req.statusCode === 200) {
        res.status(500);
      }
  
      if (error instanceof Error) {
        res.send(error.message);
      } else {
        res.send("Erro inesperado");
      }
    }
  });

  const hashManager = new HashManager();
  hashManager.hash("lidia123").then((res) => {
    console.log(res)
  } )