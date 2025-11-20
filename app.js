const express = require('express');
const app = express();
const port = 3000;

// Serve static files from the "public" folder
app.use(express.static('public'));

// Main route
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

app.listen(3000, '0.0.0.0', () => {
    console.log(`Server is running at http://0.0.0.0:${port}`);
});
