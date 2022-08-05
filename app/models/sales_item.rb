class Sales_item < ApplicationRecord
    belongs_to :invoices
    belongs_to :items
end