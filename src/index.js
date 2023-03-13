import express from 'express';
import ip from 'ip';
import dotenv from 'dotenv';
import cors from 'cors';
import Message from './response/message.js';
import logger from './utility/logger.js';

dotenv.config();

const app = express();

//middleware
app.use(cors({ origin: '*'})); //* any application can send a request to this backend server
app.use(express.json()); //request to the frontend will be in json format

app.get('/', (req, res) =>
    res.send(new Message(200, "Ok", "Patient's schedule", { patient: { name: "Opossum", schedule: "March 10th, 2023" }})));


const PORT = process.env.PORT || 5000;
app.listen(PORT, ()=> logger.info(`The server is running on: ${ip.address()}:${PORT}...`));