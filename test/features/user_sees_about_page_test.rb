require './test/test_helper'

class ErrorPageTest < CapybaraTestCase
  def test_user_can_see_the_about_page
    visit '/about'

    assert page.has_content?("About Me!")
    assert_equal 200, page.status_code
  end 
end
