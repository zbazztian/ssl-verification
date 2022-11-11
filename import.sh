#/bin/sh
set -eu
# jvm/jre/lib/security/cacerts
certstore="$1"
alias="$2"
cert="$3"
keytool -keystore "$certstore" -import -alias "$alias" -file "$cert"
