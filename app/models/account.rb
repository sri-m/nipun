class Account < ActiveRecord::Base
	belongs_to :supplier, :foreign_key => "supplier_id"    #@account.find(1).supplier
end
