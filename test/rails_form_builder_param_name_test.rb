require 'test_helper'

class RailsFormBuilderParamNameTest < ActionView::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::RailsFormBuilderParamName::VERSION
  end

  def test_form_helper_works
    assert_equal "user[birth_date]", render(inline: "<%= field_param_name :user, :birth_date %>")
    assert_equal "user[roles][]", render(inline: "<%= field_param_name :user, :roles, multiple: true %>")
  end

  def test_form_builder_works
    assert_rendered_text_equal(
      "user[birth_date]", 
      "<%= form_for :user, url: 'fakeurl' do |f| %><%= f.field_param_name :birth_date %><% end %>"
    )
    
    assert_rendered_text_equal(
      "user[roles][]", 
      "<%= form_for :user, url: 'fakeurl' do |f| %><%= f.field_param_name :roles, multiple: true %><% end %>"
    )
  end
  
  private
  
  def assert_rendered_text_equal(text, template)
    html = render(inline: template)
    assert_equal text, Nokogiri::HTML.parse(html).text
  end
end
