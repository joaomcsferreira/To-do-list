# frozen_string_literal: true

class TasksReflex < ApplicationReflex
  def mark_complete
    task = Task.find(element.dataset[:id])
    task.update(done: true, updated_at: Time.now)
  end

  def mark_incomplete
    task = Task.find(element.dataset[:id])
    task.update(done: false, updated_at: Time.now)
  end
end
