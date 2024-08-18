class AddDataToDemoTable < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        10.times do |i|
          puts "creating demo #{i+1}"
          Demo.create(
            name: "Demo - #{i+1}"
          )
        end
      end
      dir.down do
        10.times do |i|
          puts "Deleting demo #{i+1}"
          Demo.find_by(name: "Demo - #{i+1}").destroy
        end
      end
    end
  end
end
