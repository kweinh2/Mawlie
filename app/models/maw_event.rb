class MawEvent < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      MawEvent.create({
        :date => DateTime.strptime(row[0], "%m/%d/%Y"),
        :where => row[1],
        :name => row[2]
        })
    end
  end
end
