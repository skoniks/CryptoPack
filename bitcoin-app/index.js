var request = require('request');

const host = '127.0.0.1';
const port = '8342';
const username = 'btcuser';
const password = 'je6AgqRMpLy78rqv';

const auth = new Buffer.from(username + ':' + password).toString('base64');

request(
  'http://127.0.0.1:8342/',
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
