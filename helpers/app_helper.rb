def app_root
  File.expand_path('../../', __FILE__)
end

def app_models_path
  "#{ app_root }/models"
end

def app_processors_path
  "#{ app_root }/processors"
end

def require_app_models
  require "#{ app_models_path }/bill"
  require "#{ app_models_path }/phone_bill"
  require "#{ app_models_path }/transport_bill"
end

def require_app_processors
  require "#{ app_processors_path }/exit_processor"
  require "#{ app_processors_path }/main_command_processor"
  require "#{ app_root }/bills_processor"
  require "#{ app_processors_path }/export_processor"
end
