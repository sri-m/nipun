json.array!(@student_forms) do |student_form|
  json.extract! student_form, :id, :name, :email, :cell, :gender, :group, :options, :subject
  json.url student_form_url(student_form, format: :json)
end
