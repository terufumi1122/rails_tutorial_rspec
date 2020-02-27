require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do

  describe 'Home' do
    specify '画面の表示' do
      visit '/static_pages/home'
      expect(page).to have_css('h1', text: 'Sample App')
    end
  end

  describe 'Help' do
    specify '画面の表示' do
      visit '/static_pages/help'
      expect(page).to have_css('h1', text: 'Help')
    end
  end

  describe 'About' do
    specify '画面の表示' do
      visit '/static_pages/about'
      expect(page).to have_css('h1', text: 'About')
    end
  end

end
