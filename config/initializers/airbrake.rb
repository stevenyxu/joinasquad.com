airbrake_config = YAML::load_file(Rails.root.join('config', 'airbrake.yml'))

if airbrake_config && (api_key = airbrake_config['api_key'])
  Airbrake.configure do |config|
    config.api_key = api_key
  end
else
  module Airbrake
    def self.notify(*a)
      # do nothing
      Rails.logger.info('Airbrake notifications suppressed because no API key was defined in config/airbrake.yml. If you want Airbrake notifications to be sent, please overwrite airbrake.yml in your deployment environment.')
    end
  end
end
