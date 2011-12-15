if ENV['TRAVIS']
  require 'active_support/core_ext/hash/deep_merge'

  configs = YAML.load(ERB.new(IO.read(Rails.root.join('config', 'database.travis.yml'))).result)
  ActiveRecord::Base.configurations.deep_merge!(configs || {})
end
