#!/bin/sh
HOST="$1"
PORT="$2"
echo -n | openssl s_client -showcerts -connect "$HOST:$PORT" | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > "chain.cert"
