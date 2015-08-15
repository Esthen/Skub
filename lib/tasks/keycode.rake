namespace :keycode do
  desc "Deletes all rows in Code model table"
  task drop: :environment do
    Code.delete_all
  end

  desc "Delete all used codes"
  task purge: :environment do
    Code.delete_all "isactive = false"
  end

  desc "Create a number of keys with correct format"
  task create: :environment do
    for i in 0..20
      uuidstring = SecureRandom.uuid
      #uuidstring = SecureRandom.hex(10)
      if Code.where("key = '#{uuidstring}'").empty?
        tmp = Code.new(:key => uuidstring, :isactive => true, :accesstype => 1)
        tmp.save
      end
    end
  end

end
