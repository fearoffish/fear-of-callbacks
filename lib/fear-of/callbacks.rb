module FearOf
  module Callbacks
    
    def self.included(base)
      base.send :alias_method_chain, :run_callbacks, :logging
    end
    
    def run_callbacks_with_logging(kind, options = {}, &block)
      ActiveRecord::Base.logger.debug "== Callback => #{self.class} - #{kind}"
      run_callbacks_without_logging(kind, options = {}, &block)
    end
  end
end

ActiveRecord::Base.send :include, FearOf::Callbacks