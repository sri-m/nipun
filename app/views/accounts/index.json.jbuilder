json.array!(@accounts) do |account|
  json.extract! account, :id, :supplier_id, :acc_no, :acc_bal, :acc_type, :branch
  json.url account_url(account, format: :json)
end
