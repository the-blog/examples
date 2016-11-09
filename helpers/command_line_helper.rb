module CommandLineHelper
  class << self
    def get_command
      STDIN.gets.chomp.downcase.strip
    end
  end
end
