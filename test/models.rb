ActiveRecord::Base.establish_connection :adapter  => 'sqlite3', :database => File.join(File.dirname(__FILE__), 'test.db')
 
class CreateSchema < ActiveRecord::Migration
  def self.up
    create_table :cheeses, :force => true do |t|
      t.string :name
    end
  end
end
 
CreateSchema.suppress_messages { CreateSchema.migrate(:up) }
 
class Cheese < ActiveRecord::Base
  before_save :smell
  
  def smell
    # Man, I whiff of feet, I'm obviously a damn good cheese!
    # Oh, and I should output somethig to the log because of the callback logger
    puts "SMELL!"
  end
end