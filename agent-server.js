const express = require("express");
const SSE = require("express-sse");

const app = express();
const sse = new SSE();

// Endpoint para conexiones SSE
app.get("/agent-server", sse.init);

// Puedes emitir datos con: sse.send("Mensaje", "nombreEvento");

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`✅ Agent server listening on port ${PORT}`);
});
