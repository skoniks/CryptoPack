var request = require('request');

const host = '127.0.0.1';
const port = '9342';
const username = 'user';
const password = 'Ordkj1QpzRW3FtWKYxiBFuccIUHfah';

const auth = new Buffer.from(username + ':' + password).toString('base64');

request(
  `http://${host}:${port}`,
  {
    method: 'POST',
    headers: {
      'Content-type': 'application/json',
      Authorization: 'Basic ' + auth,
    },
    body: JSON.stringify({
      method: 'getblockchaininfo',
      params: [],
    }),
  },
  (err, _, body) => {
    console.info(body);

    if (err) {
      console.error(err);
    } else
      try {
        let { error, result } = JSON.parse(body);
        if (error) console.error(error);
        else console.log(result);
      } catch (err) {
        console.error(err);
      }
  },
);
