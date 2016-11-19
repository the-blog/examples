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
  %w[
    bill
    phone_bill
    transport_bill
    storage
  ].each { |file_name| require "#{ app_models_path }/#{ file_name }" }
end

def require_app_processors
  %w[
    exit_processor
    main_command_processor
    bills_processor
    export_processor
  ].each { |file_name| require "#{ app_processors_path }/#{ file_name }" }
end
