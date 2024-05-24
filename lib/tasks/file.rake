# This file's name does not appear to matter at all for the task name. So the
# tasks are named `wello:there` and `wello:hello`. I called it `file.rake` bc
# it's kinda a play on "Rakefile" (which is a terrible name IMO).

# This has good info:
# https://stackoverflow.com/questions/825748/how-to-pass-command-line-arguments-to-a-rake-task

# Example usages of rake:
#   ./bin/rake --tasks
#   ./bin/rake --tasks wello
#   ./bin/rake wello:hello
# Pass arguments to a task:
#   ./bin/rake wello:there'[abc, def]'

namespace :steve do

  # `desc` here lets it show up in `rake --tasks` (otherwise it just effing doesn't!)
  desc 'this is a steve app'
  task :app, [:a1, :b2] do |_, args|
    puts 'args:'
    puts args
    puts '======================='
    puts 'ENV:'
    puts ENV['--p']
  end

end
