require 'mt-capistrano'


set :site,         "SITE_NUMBER (4 digits probably)"
set :application,  "APPLICATION"
set :webpath,      "hiwrld.com"
set :domain,       "doug-march.com"
set :user,         ""
set :password,     "maddness77"

set :scm, :git
set :scm_command, "/home/####/users/.home/usr/bin/git"
set :repository, "git://github.com/ckhsponge/remindblast.git"
set :deploy_to,  "/home/#{site}/containers/rails/#{application}"
set :current_deploy_dir, "#{deploy_to}/current"
set :tmp_dir, "#{deploy_to}/tmp"

 

set :checkout, "export"

 

role :web, "#{domain}"

role :app, "#{domain}"

role :db,  "#{domain}", :primary => true

 

task :after_update_code, :roles => :app do

  put(File.read('config/database.yml'), "#{release_path}/config/database.yml", :mode => 0444)

end

 

task :mtr_init, :roles => :app do

  run "cd $HOME/../../containers && mkdir -p rails && cd rails && mkdir -p #{application} && cd #{application} && mkdir -p current && cd current && mtr add #{application} $PWD #{webpath}"

  run "mkdir -p $HOME/../../containers/rails/#{application}/shared"

  run "mkdir -p $HOME/../../containers/rails/#{application}/shared/log"

end

 

task :mtr_create_link, :roles => :app do

  run "mtr create_link #{application}"

end

 

namespace :deploy do

task :restart, :roles => :app do

  #run "mtr restart #{application} -u #{user} -p #{password}"

  #run "mtr generate_htaccess #{application} -u #{user} -p #{password}"

  run "mtr restart #{application} -u #{user} -p #{password}"

  run "mtr generate_htaccess #{application} -u #{user} -p #{password}"

  #migrate

end

end