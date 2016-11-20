Apipie.configure do |config|
  config.app_name = "Mutabaah"
  config.app_info = "Mutabaah App"
  config.validate = false
  config.default_version = "v1"
  config.api_base_url = "/api"
  config.api_base_url['v1'] = "/api/v1"
  config.doc_base_url = "/developers"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
  config.copyright = 'Copyright &copy; 2016. KodeLasut'
end
