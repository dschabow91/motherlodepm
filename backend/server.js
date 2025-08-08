const express = require('express');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());

const authRoutes = require('./routes/auth');
const reportRoutes = require('./routes/reports');
const inventoryRoutes = require('./routes/inventory');
const pmRoutes = require('./routes/pm');

app.use('/api/auth', authRoutes);
app.use('/api/reports', reportRoutes);
app.use('/api/inventory', inventoryRoutes);
app.use('/api/pm', pmRoutes);

app.get('/', (req, res) => res.send('CMMS backend running'));
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
