const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.use((req, res)=>{
  res.send('Hello from docker container!')
})

app.listen(PORT);
