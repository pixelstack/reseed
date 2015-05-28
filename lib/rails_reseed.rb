require "rails_reseed/version"
require 'rails'

module RailsReseed
  class ReseedTasks
    include Rake::DSL if defined? Rake::DSL

    def install_tasks
      namespace :db do
        desc 'Drop, create, migrate then seed the development database'
        task reseed: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
          puts 'Reseeding completed.'
        end
      end
    end
  end
end
RailsReseed::ReseedTasks.new.install_tasks
