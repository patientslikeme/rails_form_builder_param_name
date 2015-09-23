require 'action_view'

module RailsFormBuilderParamName
  # A Tags::Base subclass that exposes the tag_name method publicly.
  class FieldParamNameTag < ActionView::Helpers::Tags::Base
    def field_param_name(multiple = false)
      tag_name(multiple)
    end
  end
end
