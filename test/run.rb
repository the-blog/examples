# google:// ruby current file directory path
tests_root = File.expand_path('..', __FILE__)

# google:// ruby class Dir
Dir.glob("#{ tests_root }/*/*_spec.rb").each do |spec_file|
  require spec_file
end
