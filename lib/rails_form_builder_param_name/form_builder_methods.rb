require 'action_view'

module RailsFormBuilderParamName
  module FormBuilderMethods
    def field_param_name(method, options = {})
      @template.field_param_name(@object_name, method, options)
    end
  end
end
