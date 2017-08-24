require 'rails_helper'

RSpec.feature "Messages", type: :feature do
  context 'logged in' do
    before(:each) do
      visit '/users/sign_up'
      fill_in 'user[email]', with: 'bob@aol.com'
      fill_in 'user[password]', with: 'password1'
      fill_in 'user[password_confirmation]', with: 'password1'
      click_button 'Sign up'
    end

    scenario 'do it' do
      visit '/messages'
      save_and_open_page
    end

      scenario 'go go' do
        visit '/messages'
        save_and_open_page
      end
    end

    context 'not' do
      scenario 'lololoolololololllol' do
        visit '/messages'
        save_and_open_page
      end
    end
end
