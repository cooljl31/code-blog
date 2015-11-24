server "10.10.0.248", user: "ubuntu", roles: %{web}

set :scm, :git
set :branch, "master"
set :application, "code-blog"
set :repo_url, "git@github.com:nightfox/code-blog.git"

set :deploy_to, "/mnt/data/blog"

set :user, 'ubuntu'

set :app_command, 'start.sh'
set :process_name, 'node_server_code_blog'