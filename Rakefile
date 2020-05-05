require "rom"
require "rom/sql/rake_task"
require "./lib/persistence"

namespace :db do
  task :setup do
    ROM::SQL::RakeSupport.env = Persistence::Connection.()
  end

  namespace :structure do
    desc "Dump database structure to db/structure.sql"
    task :dump do
      system("pg_dump -s -x -O postgres://localhost/products", out: "db/structure.sql")
    end
  end

  desc "Run migrations and generate structure.sql"
  task :migrate do
    Rake::Task["db:structure:dump"].execute
  end
end
