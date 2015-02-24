class TaskCell < Cell::Rails
  def todo user
    @todo = User.find(user[:user_id]).tasks.where(state: "new")
    render
  end
end
