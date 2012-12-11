
require 'sinatra/base'

module Laudati
	class App < Sinatra::Base
		set :root, LAUDATI_ROOT

		get '/' do
			redirect '/upload'
		end

		get '/upload' do
			haml :index
		end

		post '/upload' do
			unless params[:zipfile] &&
				(tmpfile = params[:zipfile][:tempfile]) &&
				(name = params[:zipfile][:filename])
				@error = "No file selected"
				return haml :index
			end
			STDERR.puts "Uploading file, original name #{name.inspect}"
			#FIXME: call script to process file & output picture
			#
			#while blk = tmpfile.read(65536)
			#	# here you would write it to its final location
			#	STDERR.puts blk.inspect
			#end
			"Upload complete"
		end
	end
end

