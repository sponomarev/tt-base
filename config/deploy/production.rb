# Production host credentials
server '93.91.112.135',
       roles: %w(web app db),
       primary: true,
       user: 'tt-base',
       port: 10022

set :keep_releases, 10
set :env, worker_count: 8
