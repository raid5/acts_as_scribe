class ActsAsScribeMigrationGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate
    template "migration.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_scribe_activities.rb"
  end

end