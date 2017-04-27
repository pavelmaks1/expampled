require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe 'Static pages' do

    let(:base_title) { 'Ruby on Rails Tutorial Sample App |'}
    subject { page }

    describe 'Home page' do
      before { visit root_path }

      it { should have_content('Sample App') }
      it { should have_title(full_title('Home'))}
    end

    describe 'Help page' do
      before { visit help_path }

      it { should have_content('Help') }
      it { should have_title(full_title('Help')) }
    end

    describe 'About page' do
      before { visit about_path }

      it { should have_content('About us') }
      it { should have_title(full_title('About')) }
    end

    describe 'Contacts Page' do
      before { visit contacts_path }

      it { should have_content('Contacts') }
      it { should have_title(full_title('Contacts')) }
      end

  end
end
