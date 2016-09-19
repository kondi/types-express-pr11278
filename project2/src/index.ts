import * as express from 'express';
import { createRouter } from 'project1';

const app = express();
app.use('/', createRouter());
app.listen(3000);
