
require 'sinatra/base'

module Laudati
	class App < Sinatra::Base
		get '/' do
			"Well done callaghan"
		end
	end
end

