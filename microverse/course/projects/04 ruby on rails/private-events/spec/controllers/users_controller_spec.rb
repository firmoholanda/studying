require 'rails_helper'

RSpec.describe 'routes to the widgets controller', type: :routing do
  it 'Should get the signup page' do
    expect(get: signup_path)
      .to route_to(controller: 'users', action: 'new')
  end
end
