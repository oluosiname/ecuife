# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'register', type: :system do
  before do
    visit '/users/sign_up'
  end

  it 'signs me up' do
    within('form#register') do
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
    end
    click_button 'Register'
    expect(page).to have_content 'Welcome! You have signed up successfully'
  end

  context 'when password do not match' do
    it 'does not sign up, displays error' do
      within('form#register') do
        fill_in 'user[email]', with: 'user@example.com'
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password2'
      end
      click_button 'Register'
      expect(page).to have_content "Password confirmation doesn't match Password"
    end
  end

  context 'when password is too short' do
    it 'does not sign up, displays error' do
      within('form#register') do
        fill_in 'user[email]', with: 'user@example.com'
        fill_in 'user[password]', with: 'pass'
        fill_in 'user[password]', with: 'pass'
      end
      click_button 'Register'
      expect(page).to have_content 'Password is too short'
    end
  end
end
