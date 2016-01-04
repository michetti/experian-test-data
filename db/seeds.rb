# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'CSV'

test_data_file = ::Rails.root.join('data', 'current-test-data.csv')

puts "* Seeding Experia Test Data"

puts "- Deleting existing data..."
Profile.delete_all
puts "done"

puts "\n- Seeding new data..."
CSV.foreach(test_data_file, headers: true) do |row|
  puts "Seeding #{$.}) Reference # #{row["Reference #"]}"
  Profile.create!({
    reference: row["Reference #"],
    ssn: row["SSN"],
    first_name: row["First Name"],
    middle_name: row["Middle"],
    last_name: row["Last Name"],
    dob: (Date.strptime(row["DOB"], "%m%d%Y") rescue nil),
    phone: row["PHONE"],
    address: row["Address"],
    city: row["City"],
    state: row["State"],
    zip: row["ZIP Code"],
    fico: row["FICO V08 Score"],
    public_records: row["# Public Records"],
    bankruptcies: row["# Bankruptcies"],
    liens: row["# Liens"],
    trades: row["# Trades"],
    education: row["# Type 12 (Educ)"],
    mortgage: row["# Mortgage"],
    was_delinquent_30_days: row["# Was Delinq 30 Days"],
    was_delinquent_60_days: row["# Was Delinq 60 Days"],
    was_delinquent_90_days: row["# Was Delinq 90 Days"],
    was_delinquent_120_days: row["# Was Delinq => 120 Days"],
    delinquent_30_days: row["# Delinq 30 Days"],
    delinquent_60_days: row["# Delinq 60 Days"],
    delinquent_90_days: row["# Delinq 90 Days"],
    delinquent_120_days: row["# Delinq => 120 Days"],
    paid_was_delinquent_30_days: row["# Paid Was Delinq 30 Days"],
    paid_was_delinquent_60_days: row["# Paid Was Delinq 60 Days"],
    paid_was_delinquent_90_days: row["# Paid Was Delinq 90 Days"],
    paid_was_delinquent_120_days: row["# Paid Was Delinq => 120 Days"],
    foreclosures: row["# Foreclosures (Stat 87, 89, 94)"],
    repossessions: row["# Repossessions"],
    charge_offs: row["# Charge-offs"],
    other_derogatories: row["# Other Derog"],
    collections: row["# Collections"]
  })
end

puts "done"