namespace :db do
  desc "Removes the database, migrates and re-seeds again"

  task reseed: :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end
end