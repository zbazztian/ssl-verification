#!/bin/bash
javac SSLPoke.java
#jvm/jre/lib/security/cacerts
certstore="$1"
server="$2"
port="$3"
java "-Djavax.net.ssl.trustStore=$certstore" SSLPoke "$server" "$port"
