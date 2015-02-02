require 'rails_helper'

describe Organ, :type => :model do
  before do
    @user = FactoryGirl.create(:user)
    @organ = FactoryGirl.create(:organ)
  end
  
  it "add user in organ" do
    expect(@organ.join_us(@user)).to eq(true)
    expect(@organ.users.size).to eq(1)
    expect(@organ.users.first).to eq(@user)
  end
end
