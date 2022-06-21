namespace :jobs do
  task work: :environment do
    puts "This simulates Delayed Job"
    puts "So that this application can behave like"
    puts "delayed job is installed, without it actually"
    puts "being installed. This is really only for COLA"
    puts "as not many other apps use DelayedJob"
    `tail -f /dev/null`
  end
end