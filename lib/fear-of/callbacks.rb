module FearOf
  module Callbacks
    def run_callbacks_with_logging(kind, options = {}, &block)
      ActiveRecord::Base.logger.debug "== Callback => #{self.class} - #{kind}"
    end
    alias_method :run_callbacks, :run_callbacks_with_logging
  end
end

ActiveRecord::Base.send :include, FearOf::Callbacks