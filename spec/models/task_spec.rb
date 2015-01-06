# -*- coding: utf-8 -*-
require 'rails_helper'

describe Task, :type => :model do
  it "reate a task" do
    Task.new(content: "task1").save == true
    Task.first.num != nil
    expect(Task.first.state).to eq("new")
  end

  describe "close task" do
    before do
      FactoryGirl.create(:user)
    end

    it "close task" do
      Task.first.close
      expect(Task.first.state).to eq("closed")
    end
  end
end