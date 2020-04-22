require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  it 'should get home' do
    get :home
    expect(response).to render_template('home')
  end

  it 'should get about' do
    get :about
    expect(response).to render_template('about')
  end

  it 'should get contact' do
    get :contact
    expect(response).to render_template('contact')
  end
end
