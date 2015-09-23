require 'action_view'

module ActionView
  module Helpers
    class FormBuilder # :nodoc:
      def field_param_name(method, options = {})
        @template.field_param_name(@object_name, method, options)
      end
    end
  end
end
