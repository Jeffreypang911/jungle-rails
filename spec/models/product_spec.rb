require 'rails_helper'

RSpec.describe Product, type: :model do
  
  it 'should exist for name' do
    expect(@Product.name).to be_present
  end

  it 'should exist for price' do
    expect(@Product.name).to be_present
  end

end
