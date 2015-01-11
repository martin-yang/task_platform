# -*- coding: utf-8 -*-
require 'rails_helper'

describe DateRecord, :type => :model do
  before do
    FactoryGirl.create(:task)
    FactoryGirl.create(:join_user)
  end

  it "take tasks by now time" do
    expect(DateRecord.take_tasks(Time.now).first).to eq(Task.first)
  end

  it "take had tasks for user by now time" do
    expect(User.all.size).to eq(2)
    expect(TakeTaskPerson.execute(Time.now).size).to eq(1)
  end
end
