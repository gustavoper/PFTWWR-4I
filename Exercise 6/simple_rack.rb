#simple_rack.rb


def simple_rack_call(str)
	my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command Line argument you typed is: #{str}"]] }
	puts my_rack_proc.call({})
end



if (ARGV[0])
	# "Valid"

	simple_rack_call(ARGV[0])	

	#rackProc = lambda { |env| [200, {"Content-type => text/plain"}, [ARGV[0]]]}
	#puts rackProc.call({})

else 
	# "Invalid"
	puts "Invalid Arguments! You need to pass just one argument"
end


