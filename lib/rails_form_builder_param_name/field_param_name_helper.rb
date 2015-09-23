require 'rails_form_builder_param_name/field_param_name_tag'

module RailsFormBuilderParamName
  module FieldParamNameHelper
    # Returns the parameter name that Rails form helpers will generate for a given method.
    # For example:
    #
    #     <div data-birth-date-field="<%= field_param_name :user, :birth_date %>"></div>
    #
    # will render a div with the data attribute "data-birth-date-field" set to the string
    # "user[birth_date]".  This can be useful for passing the correct field names to
    # JavaScript frameworks to send back in a hybrid response.
    def field_param_name(object_name, method, options = {})
      RailsFormBuilderParamName::FieldParamNameTag.new(object_name, method, self).field_param_name(options[:multiple])
    end
  end
end