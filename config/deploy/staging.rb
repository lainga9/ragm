############################################
# Setup Server
############################################

set :stage, :staging
set :stage_url, "http://glasgoweb.net"
server "185.24.98.8", user: "glasgowe", roles: %w{web app db}
set :deploy_to, "/home/glasgowe/public_html/ragm2"

############################################
# Setup Git
############################################

set :branch, "development"



############################################
# Extra Settings
############################################

#specify extra ssh options:

set :ssh_options, {
   auth_methods: %w(password),
   password: 'Gr4k0103',
   user: 'glasgowe',
}

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
