require 'byebug'
require 'faker'
require 'nokogiri'
require 'rake'
require 'rspec'
require 'watir'

ENVIRONMENT ||= ENV['ENVIRONMENT']

URL ||= YAML.load_file(File.dirname(__FILE__) + '/config/urls.yml')

Watir.default_timeout = 60
