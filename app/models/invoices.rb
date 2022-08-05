class Invoices < ApplicationRecord
    belongs_to :branchs
    belongs_to :customers
end