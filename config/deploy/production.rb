set :domain, '192.241.211.105'

role :app, domain
role :web, domain
role :db, domain, :primary => true

set :repository,  "git@github.com:redsparklabs/transapiio-app.git"

set :branch, "master"

set :applicationdir, "/home/dev/transapiio/"
set :deploy_to, "/home/dev/transapiio/"