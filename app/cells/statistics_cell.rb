class StatisticsCell < Cell::Rails
  def home_navicate user
  	user = User.find(user[:user_id])
    tasks = user.tasks
    @total = tasks.count
    @today = user.today_tasks.count
    @pending = tasks.where(state: "new").count
    @complete = tasks.where(state: "closed").count
    render
  end
end
