#require 'rubygems'
require 'active_support/core_ext/module/aliasing'
require 'rspec'
require 'rspec/core/formatters/base_formatter'
require 'rspec/core/formatters/progress_formatter'

require File.join(File.dirname(__FILE__), 'adapters', 'logger').to_s
require File.join(File.dirname(__FILE__), 'adapters', 'rspec').to_s
require File.join(File.dirname(__FILE__), 'adapters', 'cucumber').to_s
