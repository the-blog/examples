module CommandLineHelper
  class << self
    def get_command
      STDIN.gets.chomp.downcase.strip
    end

    alias_method :get_input, :get_command
  end
end
