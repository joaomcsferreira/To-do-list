class TasksController < ApplicationController

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all.order(created_at: :desc)
    @task = Task.new
  end

  # POST /tasks or /tasks.json
  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    if @task.present?
      @task.destroy
    end
    redirect_to root_url
end

  private
    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:body, :done)
    end
end
