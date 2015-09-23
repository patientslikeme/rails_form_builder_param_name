require "rails_form_builder_param_name/version"
require "rails_form_builder_param_name/field_param_name_helper"
require "rails_form_builder_param_name/form_builder"

ActionView::Helpers::FormHelper.send(:include, RailsFormBuilderParamName::FieldParamNameHelper)
