require 'rails_helper'

describe Organ, :type => :model do
  before do
    @user = FactoryGirl.create(:user)
    @organ = FactoryGirl.create(:organ)
  end

  it "had two roles in organ" do
    expect(@organ.actors.size).to eq(2)
  end
  
  it "add user in organ" do
    expect(@organ.join_us(@user)).to eq(true)
    expect(@organ.users.size).to eq(1)
    expect(@organ.users.first).to eq(@user)
  end

  it "don't repeat to user" do
    @organ.join_us @user
    expect(@organ.users.size).to eq(1)
    expect(@organ.join_us(@user)).to eq(false)
    expect(@organ.users.size).to eq(1)
  end
end
