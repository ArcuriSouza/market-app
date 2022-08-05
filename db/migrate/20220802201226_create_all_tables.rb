class CreateAllTables < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :description
      t.string :address
      t.string :phone
      t.integer :level 

      t.timestamps
    end
    
    create_table :categories do |t|
      t.string :description

      t.timestamps
    end

    create_table :items do |t|
      t.string :description
      t.belongs_to :categories
      t.string :inventory
      t.decimal :price, precision: 8, scale: 2
      t.decimal :price_promo, precision: 8, scale: 2
      t.integer :club_perc, precision: 100

      t.timestamps
    end

    create_table :genders do |t|
      t.string :description

      t.timestamps
    end

    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.boolean :is_admin
      t.boolean :is_club
      t.belongs_to :genders

      t.timestamps
    end

    create_table :invoices do |t|
      t.belongs_to :branches
      t.belongs_to :customers
      t.decimal :total_value, precision: 10, scale: 2
      t.string :details
      t.boolean :is_active

      t.timestamps
    end

    create_table :sales_item do |t|
      t.belongs_to :invoices
      t.belongs_to :items
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
