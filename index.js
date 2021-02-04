require("dotenv").config();
const server = require("./server");


const PORT = process.env.PORT || 9000;

server.listen(PORT, () => {
    console.log(`\n** API running on port: ${PORT} **\n`);
});