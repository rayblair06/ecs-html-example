const fs = require('fs');
const http = require('http');


const port = process.env.PORT || 80;


const server = http.createServer((request, response) => {
    response.writeHead(200, { 'content-type': 'text/html' });
    fs.createReadStream(`${__dirname  }/index.html`).pipe(response);
});

server.listen(port);

console.log(`App listening on port ${port}`);
