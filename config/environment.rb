require "bundler/setup"
Bundler.require()

require_all "lib"

require 'date'
ActiveRecord::Base.logger = nil

