require 'action_view'

class RailsFormBuilderParamName::FieldParamNameTag < ActionView::Helpers::Tags::Base
  def field_param_name(multiple = false)
    tag_name(multiple)
  end
end