use Rack::Static, :urls =>%w[/css /images], :root=>'public'
require './app'

run BirthdayMessage
