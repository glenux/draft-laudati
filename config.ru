
require 'sinatra'

LAUDATI_ROOT=File.expand_path(File.dirname(__FILE__))
require File.join(File.dirname(__FILE__), 'lib', 'laudati')

disable :run


map '/' do
	  run Laudati::App
end

