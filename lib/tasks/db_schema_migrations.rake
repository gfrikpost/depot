namespace :db do
    desc "This task displays the applied version migration"
    task :schema_migrations => :environment do
        puts ActiveRecord::Base.connection.select_values('select version from schema_migrations order by version')
    end
    
end