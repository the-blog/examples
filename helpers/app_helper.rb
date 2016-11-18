def require_app_models
  require_relative '../models/bill'
  require_relative '../models/phone_bill'
  require_relative '../models/transport_bill'
end

def require_app_processors
  require_relative '../processors/exit_processor'
  require_relative '../processors/main_command_processor'
  require_relative '../processors/bills_processor'
  require_relative '../processors/export_processor'
end
