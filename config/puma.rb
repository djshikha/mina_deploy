#!/usr/bin/env puma

environment ENV['RAILS_ENV'] || 'production'

daemonize true

pidfile "/home/ubuntu/var/www/mina_deploy/shared/tmp/pids/puma.pid"
stdout_redirect "/home/ubuntu/var/www/mina_deploy/shared/tmp/log/stdout", "/home/ubuntu/var/www/mina_deploy/shared/tmp/log/stderr"

threads 0, 16

bind "unix:/home/ubuntu/var/www/mina_deploy/shared/tmp/sockets/puma.sock"