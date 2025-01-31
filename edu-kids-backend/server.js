const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Koneksi ke MongoDB
mongoose.connect('mongodb://localhost:27017/edu-kids', { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('MongoDB connected'))
  .catch((err) => console.log(err));

// Schema User
const userSchema = new mongoose.Schema({
  username: String,
  password: String,
  score: { type: Number, default: 0 },
});

const User = mongoose.model('User', userSchema);

// Route untuk registrasi pengguna
app.post('/register', async (req, res) => {
  const { username, password } = req.body;
  const user = new User({ username, password });
  await user.save();
  res.status(201).json({ message: 'User created successfully' });
});

// Route untuk login pengguna
app.post('/login', async (req, res) => {
  const { username, password } = req.body;
  const user = await User.findOne({ username, password });
  if (user) {
    res.status(200).json({ message: 'Login successful', user });
  } else {
    res.status(400).json({ message: 'Invalid credentials' });
  }
});

// Route untuk menyimpan skor
app.post('/save-score', async (req, res) => {
  const { username, score } = req.body;
  const user = await User.findOne({ username });
  if (user) {
    user.score = score;
    await user.save();
    res.status(200).json({ message: 'Score saved successfully' });
  } else {
    res.status(400).json({ message: 'User not found' });
  }
});

// Mulai server
app.listen(5000, () => {
  console.log('Server running on port 5000');
});
