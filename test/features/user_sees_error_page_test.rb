require './test/test_helper'

class ErrorPageTest < CapybaraTestCase
  def test_it_returns_error_page
    visit '/adfds'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
