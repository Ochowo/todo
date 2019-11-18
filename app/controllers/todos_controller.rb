
class TodosController < ApplicationController
  def index
    todos = Todo.order("created_at DESC")
    render json: todos
  end

  def create
    todo = Todo.create(todo_param)
    render json: todo
  end
  
  private
    def todo_param
      params.permit(:title, :done)
    end
end