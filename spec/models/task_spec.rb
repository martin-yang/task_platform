# -*- coding: utf-8 -*-
require 'rails_helper'

describe Task, :type => :model do
  it "reate a task" do
    FactoryGirl.create(:task)
    expect(Task.all.size).to eq(1)
  end

  describe "close task" do
    before do
      FactoryGirl.create(:task)
    end

    it "close task" do
      Task.first.close
      expect(Task.first.state).to eq("closed")
    end

    it "take tasks by user" do
      expect(User.first.tasks.size).to eq(1)
      expect(User.first.tasks.first).to eq(Task.first)
    end
  end
end
