// File: server.js
import express from 'express';
import mongoose from 'mongoose';
import cors from 'cors';
import dotenv from 'dotenv';
import jwt from 'jsonwebtoken';

import Alumni from './models/Alumni.js';
import User from './models/User.js';

const app = express();
dotenv.config();

app.use(cors());
app.use(express.json());

mongoose.connect(process.env.MONGO_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

// Middleware to verify token
const authenticate = (req, res, next) => {
  const token = req.headers.authorization?.split(' ')[1];
  if (!token) return res.status(403).json({ message: 'Token required' });
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded;
    next();
  } catch (err) {
    res.status(401).json({ message: 'Invalid token' });
  }
};

// Routes
app.get('/api/alumni', async (req, res) => {
  const alumni = await Alumni.find();
  res.json(alumni);
});

app.post('/api/alumni', authenticate, async (req, res) => {
  const newAlumni = new Alumni(req.body);
  await newAlumni.save();
  res.json(newAlumni);
});

// Admin login route
app.post('/api/login', async (req, res) => {
  const { username, password } = req.body;
  const user = await User.findOne({ username });
  if (!user || user.password !== password) {
    return res.status(401).json({ message: 'Invalid credentials' });
  }
  const token = jwt.sign({ id: user._id, username: user.username }, process.env.JWT_SECRET);
  res.json({ token });
});

app.listen(5000, () => console.log('Server running on port 5000'));

// File: models/Alumni.js
import mongoose from 'mongoose';

const alumniSchema = new mongoose.Schema({
  name: String,
  rollNo: String,
  program: String,
  batch: String,
  cgpa: Number,
  company: String,
});

export default mongoose.model('Alumni', alumniSchema);

// File: models/User.js
import mongoose from 'mongoose';

const userSchema = new mongoose.Schema({
  username: String,
  password: String,
});

export default mongoose.model('User', userSchema);

// File: .env
// Replace values with actual credentials
MONGO_URI=mongodb://localhost:27017/vit_alumni
JWT_SECRET=your_secret_key

// File: seed.js
import mongoose from 'mongoose';
import dotenv from 'dotenv';
import Alumni from './models/Alumni.js';

dotenv.config();

const seedData = [
  { name: 'Ananya Sharma', rollNo: '19BCE001', program: 'B.Tech CSE', batch: '2023', cgpa: 9.2, company: 'Amazon' },
  { name: 'Ravi Kumar', rollNo: '19BCE002', program: 'B.Tech CSE', batch: '2023', cgpa: 8.7, company: 'Infosys' },
  { name: 'Sneha Patel', rollNo: '18BCE010', program: 'B.Tech CSE', batch: '2022', cgpa: 9.5, company: 'Google' },
];

mongoose.connect(process.env.MONGO_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
}).then(async () => {
  await Alumni.deleteMany({});
  await Alumni.insertMany(seedData);
  console.log('Database seeded');
  mongoose.disconnect();
});
