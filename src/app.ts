import express from 'express';

import { MainRoute } from './routes';

const app: express.Application = express();

// routes
app.use('/', MainRoute);

export default app;
