json.array!(@todo_lists) do |todo_list|
  json.extract! todo_list, :id, :title, :description,:first_value,:second_value,:total,:address,:phone_number,:first_name,:last_name
  json.url todo_list_url(todo_list, format: :json)
end
