class ActsAsScribeMigrationGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  #argument :model_name, :type => :string, :description => "Name of model to store user activities in."

  def generate
    #class_collisions model_name, "#{model_name}"
    
    #template "migration.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_#{model_name.tableize}.rb"
    template "migration.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_scribe_activities.rb"
  end

end