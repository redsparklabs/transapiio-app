set :domain, '192.241.211.105'

set :rails_env, "staging"

role :app, domain
role :web, domain
role :db, domain, :primary => true

set :repository,  "git@github.com:redsparklabs/transapiio-app.git"

set :branch, "staging"

set :applicationdir, "/home/dev/transapiio-staging/"
set :deploy_to, "/home/dev/transapiio-staging/"