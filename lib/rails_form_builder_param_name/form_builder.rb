require 'action_view'

class ActionView::Helpers::FormBuilder
  def field_param_name(method, options = {})
    @template.field_param_name(@object_name, method, options)
  end
end
