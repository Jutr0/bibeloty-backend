require_relative "config/application"

Rails.application.load_tasks

Rake::Task["db:migrate"].enhance do
  system("bundle exec annotate --models")
end