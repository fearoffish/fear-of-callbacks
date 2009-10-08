require 'rubygems'
require 'activerecord'
require 'models'
require 'mocha'
require 'test/unit'
require 'shoulda'
begin require 'redgreen'; rescue LoadError; end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'fear-of-callbacks'

class Test::Unit::TestCase
  def setup
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end
end
