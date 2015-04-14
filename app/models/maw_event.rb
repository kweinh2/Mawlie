class MawEvent < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      MawEvent.create! row.to_hash
    end
  end
end
