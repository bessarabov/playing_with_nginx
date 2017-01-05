# playing_with_nginx

Sample repo that shows differences in tailing slash in nginx proxy_pass
(see file `nginx/nginx.conf`).

In one console:

    git clone ...
    cd ...
    ./restart
    ./log

In the second console:

    curl --silent http://docker/a/asdf; echo ''
    curl --silent http://docker/b/asdf; echo ''

In the first console you will see:

    a_1      | 2017-01-05T12:51:00Z GET /a/asdf
    b_1      | 2017-01-05T12:51:00Z GET //asdf
