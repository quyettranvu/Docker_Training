import http from "http";
const port = 3030;

const requestHandler = (req, res) => {
  console.log(req.url);
  res.end("Hello Node.js Web Server!");
};

const server = http.createServer(requestHandler);
server.listen(port, (err) => {
  if (err) {
    return console.log("Something bad happened", err);
  }
  console.log(`Server is listening on ${port}`);
});
