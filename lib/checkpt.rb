require 'rubygems'
require 'yaml'
require 'fileutils'
require 'bundler'
Bundler.require(:default)

$:.unshift(File.dirname(__FILE__))

require 'checkpt/cli'
require 'checkpt/file'
require 'checkpt/dir'
require 'checkpt/version'
#TODO

module Checkpt
end
