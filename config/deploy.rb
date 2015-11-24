set :keep_releases, 5

namespace :deploy do

  after :publishing, :install_packages do
    on roles(:web) do
       within current_path do
         execute :npm, :install, '--production'
       end
    end
  end

  after :install_packages, :restart do
    on roles(:web) do
        within current_path do
            invoke 'pm2:restart'
        end
    end
  end

end
