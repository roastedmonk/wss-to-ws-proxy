#!/bin/sh
# Configured to run in windows.
# With thanks to https://stackoverflow.com/a/10176685
#
rm cert/*
openssl req -x509 -newkey rsa:4096 -keyout cert/clientcertkey.pem -out cert/clientcert.pem -sha256 -days 100000 -nodes -subj '//CN=localhost'
