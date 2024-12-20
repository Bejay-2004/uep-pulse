const express = require('express'); // Import Express
const mysql = require('mysql2');    // Import MySQL
const bodyParser = require('body-parser'); // Import Body Parser
const cors = require('cors');        // Import CORS

const app = express();               // Create an Express app
const PORT = process.env.PORT || 3000; // Set the port

app.use(cors());                     // Enable CORS
app.use(bodyParser.json());          // Use Body Parser for JSON

// Create a connection to the MySQL database
const db = mysql.createConnection({
    host: 'localhost',               // Database host
    user: 'your_username',           // Your MySQL username
    password: 'your_password',       // Your MySQL password
    database: 'your_database'        // Your MySQL database name
});

// Connect to the database
db.connect(err => {
    if (err) throw err;              // Handle connection errors
    console.log('Connected to the database');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});









// Get all suggestions
app.get('/api/suggestions', (req, res) => {
    db.query('SELECT * FROM suggestions', (err, results) => {
        if (err) return res.status(500).send(err); // Handle errors
        res.json(results); // Send results back as JSON
    });
});

// Create a new suggestion
app.post('/api/suggestions', (req, res) => {
    const { suggestion } = req.body; // Get suggestion from request body
    db.query('INSERT INTO suggestions (suggestion) VALUES (?)', [suggestion], (err, results) => {
        if (err) return res.status(500).send(err); // Handle errors
        res.status(201).json({ id: results.insertId, suggestion }); // Respond with new suggestion
    });
});
