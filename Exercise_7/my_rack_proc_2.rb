#my_rack_proc_2.rb
require 'rack'




def simple_rack_call(str)
	my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command Line argument you typed is: #{str}"]] }
	#puts my_rack_proc.call({})
end



	if (ARGV[0])
		#starting WEBrick server...
		#Rack::Handler::WEBrick.run simple_rack_call(), :Port =>8500
		#Rack::Server.new( { :app=>simple_rack_call, :server=>'webrick', :Port =>8500 } ).start

		server = Rack::Server.new( { :app => simple_rack_call(ARGV[0]), :server => 'webrick', :Port => 8500 } )
		server.start


	else 
		puts "Invalid arguments!"
	end





