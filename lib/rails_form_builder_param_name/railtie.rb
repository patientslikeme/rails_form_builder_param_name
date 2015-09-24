module RailsFormBuilderParamName
  class Railtie < Rails::Railtie
    initializer "rails_form_builder_param_name.helpers" do
      ActionView::Base.send :include, RailsFormBuilderParamName::FieldParamNameHelper
      ActionView::Helpers::FormBuilder.send :include, RailsFormBuilderParamName::FormBuilderMethods
    end
  end
end
