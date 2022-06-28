class TodosController < ApplicationController
  def index
    @todo = Todo.all
  end
  def create
    user = Todo.new(user_params)
    if  user.save
      Todo.all
      redirect_to root_path
    else
      render plain: "Failed"
    end
  end
  def update
    id = params[:id]
    todo = Todo.find(id)
    todo.status = true
    todo.save
    redirect_to root_path
  end
  def delete
    todo = Todo.find(params[:id])
    todo.destroy
    @todo = Todo.all
    redirect_to root_path
  end
  private
  def user_params
    params.require(:todo).permit(:task,:date)
  end
end
