class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :reference
      t.string :ssn
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :fico
      t.integer :public_records
      t.integer :bankruptcies
      t.integer :liens
      t.integer :trades
      t.integer :education
      t.integer :mortgage
      t.integer :was_delinquent_30_days
      t.integer :was_delinquent_60_days
      t.integer :was_delinquent_90_days
      t.integer :was_delinquent_120_days
      t.integer :delinquent_30_days
      t.integer :delinquent_60_days
      t.integer :delinquent_90_days
      t.integer :delinquent_120_days
      t.integer :paid_was_delinquent_30_days
      t.integer :paid_was_delinquent_60_days
      t.integer :paid_was_delinquent_90_days
      t.integer :paid_was_delinquent_120_days
      t.integer :foreclosures
      t.integer :repossessions
      t.integer :charge_offs
      t.integer :other_derogatories
      t.integer :collections
    end

    add_index :profiles, :reference, unique: true
    add_index :profiles, :dob
    add_index :profiles, :state
    add_index :profiles, :fico
    add_index :profiles, :public_records
    add_index :profiles, :bankruptcies
    add_index :profiles, :liens
    add_index :profiles, :trades
    add_index :profiles, :education
    add_index :profiles, :mortgage
    add_index :profiles, :was_delinquent_30_days
    add_index :profiles, :was_delinquent_60_days
    add_index :profiles, :was_delinquent_90_days
    add_index :profiles, :was_delinquent_120_days
    add_index :profiles, :delinquent_30_days
    add_index :profiles, :delinquent_60_days
    add_index :profiles, :delinquent_90_days
    add_index :profiles, :delinquent_120_days
    add_index :profiles, :paid_was_delinquent_30_days
    add_index :profiles, :paid_was_delinquent_60_days
    add_index :profiles, :paid_was_delinquent_90_days
    add_index :profiles, :paid_was_delinquent_120_days
    add_index :profiles, :foreclosures
    add_index :profiles, :repossessions
    add_index :profiles, :charge_offs
    add_index :profiles, :other_derogatories
    add_index :profiles, :collections
  end
end
