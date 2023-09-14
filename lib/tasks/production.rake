namespace :production do
    desc 'Run production tasks'
    task :all => [:environment] do
      # Run bundle install
      sh 'railway run bundle install --without development test'

      # Migrate the database
      sh 'railway run bundle exec rake db:create'
      
  
      # Migrate the database
      sh 'railway run bundle exec rake db:migrate'
  
      
  
      # Start the Rails server in production mode
      sh 'railway run bundle exec rails server'
    end
  end
  