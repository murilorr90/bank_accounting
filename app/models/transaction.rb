class Transaction < ApplicationRecord
  belongs_to :source_account_id, :class_name => "User"
  belongs_to :destination_account_id, :class_name => "User", :foreign_key => 'destination_account_id'
end
