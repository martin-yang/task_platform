require 'rails_helper'

describe Remind, :type => :model do
  it "create a remind task" do
    remind = Remind.new(content: "x", clook: "2014-01-01 08:00:00", state: "new")
    expect(remind.save).to eq(true)
  end

  describe "close remind task" do
    before do
      FactoryGirl.create(:remind)
    end

    it "reminds size is 1" do
      expect(Remind.count).to eq(1)
    end

    it "close remind" do
      remind = Remind.first
      remind.close
      expect(remind.state).to eq("closed")
    end
  end
end
