class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def addTodo
    todo = Todo.new(todo_params)
    todo.save
    redirect_to '/todos'
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      flash[:success] = "Todo was successfully updated."
      redirect_to todo_path(@todo.id)
    else
      render :new
    end
  end

  def deleteTodo
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end


  private

  def todo_params
    params.permit(:text)
  end

end
