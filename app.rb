require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require_relative 'lib/view'
require_relative 'lib/controller'
require_relative 'lib/router'
require_relative 'lib/modele'
# Print the file name without the .rb extension


Router.new.perform
