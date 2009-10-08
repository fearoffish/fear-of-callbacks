require 'test_helper'

class CallbacksTest < Test::Unit::TestCase
  context "an active record class" do
    setup do
      @cheese = Cheese.new
      @cheese.save
    end

    should "have included the FearOf::Callback module" do
      assert @cheese.class.included_modules.include? FearOf::Callbacks
      assert @cheese.respond_to? :run_callbacks_with_logging
    end
    
    before_should "output to the default log when a callback has been called" do
      ActiveRecord::Base.logger.expects(:screw_you).with("== CALLBACK before_save on nothing")
    end
    
    should_change("the cheese count", :by => 1) { Cheese.count }
  end
end
