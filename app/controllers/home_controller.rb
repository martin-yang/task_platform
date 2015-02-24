class HomeController < ApplicationController
  def index
  	tasks = current_user.tasks
    @total = tasks.count
    @today = current_user.today_tasks.count
    @pending = tasks.where(state: "new").count
    @complete = tasks.where(state: "closed").count
  end
end
