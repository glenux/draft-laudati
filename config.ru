
require 'sinatra'
require File.join(File.dirname(__FILE__), 'lib', 'laudati')

disable :run

map '/' do
	  run Laudati::App
end

