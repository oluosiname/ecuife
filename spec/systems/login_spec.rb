# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'login', type: :system do
  before do
    User.create(email: 'user@example.com', password: 'password')
    visit '/users/sign_in'
  end

  it 'signs me in' do
    within('form#login') do
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end

  context 'when login is invalid' do
    it 'does not sign in, displays error' do
      within('form#login') do
        fill_in 'user[email]', with: 'invaliduser@example.com'
        fill_in 'user[password]', with: 'password'
      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password'
    end
  end
end
