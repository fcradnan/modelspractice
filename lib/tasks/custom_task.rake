namespace :data do
  desc "Print all doctors"
  task show_doctors: :environment do
    puts Doctor.all.pluck(:name)
  end



  task doctors_count: :environment do
  puts Doctor.count
end
end
