require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  it 'should get home' do
    get :home
    expect(response).to render_template('home')
  end

  it 'should return the help page' do
    get :home
    expect(response).to render_template('home')
  end

  it 'should return the about page' do
    get :home
    expect(response).to render_template('home')
  end
end

RSpec.describe 'routes to the widgets controller', type: :routing do
  it 'should get the login page' do
    expect(get: login_path)
      .to route_to(controller: 'sessions', action: 'new')
  end
end
