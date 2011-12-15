if ENV['TRAVIS']
  configs = YAML.load_file(Rails.root.join('test', 'database.yml'))
  ActiveRecord::Base.configurations = configs

  db_name = ENV['DB'] || 'sqlite'

  ActiveRecord::Base.establish_connection(db_name)
  ActiveRecord::Base.default_timezone = :utc
end
