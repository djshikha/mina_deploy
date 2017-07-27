#!/usr/bin/env puma

environment ENV['RAILS_ENV'] || 'production'

daemonize true

pidfile "/var/www/mina_deploy/shared/tmp/pids/puma.pid"
stdout_redirect "/var/www/mina_deploy/shared/tmp/log/stdout", "/var/www/mina_deploy/shared/tmp/log/stderr"

threads 0, 16

bind "unix:/var/www/mina_deploy/shared/tmp/sockets/puma.sock"