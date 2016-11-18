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
  [
    'bill',
    'phone_bill',
    'transport_bill'
  ].each do |file_name|
    require "#{ app_models_path }/#{ file_name }"
  end
end

def require_app_processors
  [
    'exit_processor',
    'main_command_processor',
    'bills_processor',
    'export_processor'
  ].each do |file_name|
    require "#{ app_processors_path }/#{ file_name }"
  end
end
