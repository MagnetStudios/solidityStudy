# Api Call By Oraclize

We can easily call our api by oraclize, we can custom data type like `json` or `xml`.



How to run your random number api?
==========

*As Oraclize is a remote service, it requires the `URL` datasource to also be remotely accessible. In case a developer may wish to use an API that is accessible only on their local network, they may use the `localtunnel` utility available via `npm` to expose their local port via a publicly accessible url (which is what is to be used as the query parameter, in place of localhost:8080 or 127.0.0.1). More information on this utility is available at: *

    # open first terminal
    python rand_api.py

    # open second terminal
    lt --port 5611

    # you will got a url which generate by `lt`, and then put it to your .sol file.
    # and then run your sol on remix ...
    # create a sol instance , wait a moment you will got 4 random number !



