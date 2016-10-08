# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

def import_csv(file_name,cls)
  csv_text = File.read(file_name)
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    cls.create!(row.to_hash)
  end
end

def import_sql(filename)
  connection = ActiveRecord::Base.connection
  sql = File.read(filename)
  statements = sql.split(/;$/)
  statements.pop
  ActiveRecord::Base.transaction do
    statements.each do |statement|
      connection.execute(statement)
    end
  end
end

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
#import_csv('db/classif.csv',Classification)
#import_sql('db/locat.sql')