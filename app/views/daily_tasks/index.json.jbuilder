json.array!(@daily_tasks) do |daily_task|
  json.extract! daily_task, :id, :title, :user_id
  json.url daily_task_url(daily_task, format: :json)
end
