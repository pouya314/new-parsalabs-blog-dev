require 'test_helper'

class BlogTest < ActionDispatch::IntegrationTest
  # setup do
  #   Capybara.current_driver = Capybara.javascript_driver
  # end

  test 'shows blog posts' do
    visit root_path
    
    within("h1") do
      assert has_content? 'POSTS'
    end    
  end

  test "javascript works" do
    Capybara.current_driver = Capybara.javascript_driver
    
    visit root_path
    click_button('CLICK ME')
    
    within("div#my-target") do
      assert has_selector? 'p'
      assert has_content? 'HELLO JS'
    end
    
    click_button('CLICK ME')
    assert page.has_content? 'HELLO JS', :count => 2
    
    Capybara.use_default_driver
  end
end
