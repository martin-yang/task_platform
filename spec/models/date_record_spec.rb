# -*- coding: utf-8 -*-
require 'rails_helper'

describe DateRecord, :type => :model do
  before do
    FactoryGirl.create(:task)
  end

  it "take tasks by now time" do
    expect(DateRecord.take_tasks(Time.now).first).to eq(Task.first)
  end
end
