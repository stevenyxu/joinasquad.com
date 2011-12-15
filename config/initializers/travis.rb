if ENV['TRAVIS']
  require 'active_support/core_ext/hash/deep_merge'

  configs = YAML.load_file(Rails.root.join('config', 'database.travis.yml'))
  ActiveRecord::Base.configurations.deep_merge!(travis_configs)
end
