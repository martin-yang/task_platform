# -*- coding: utf-8 -*-
require 'rails_helper'

describe Task, :type => :model do
  it "reate a task" do
  	expect(Task.new(content: "task1").save).to eq(true)
    expect(Task.first.num != nil).to eq(true)
    expect(Task.first.state).to eq("new")
  end

  describe "close task" do
    before do
      FactoryGirl.create(:task)
    end

    it "close task" do
      Task.first.close
      expect(Task.first.state).to eq("closed")
    end
  end
end