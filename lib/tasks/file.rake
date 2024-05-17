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

namespace :wello do

  # `desc` here lets it show up in `rake --tasks` (otherwise it just effing doesn't!)
  desc 'Does a "wello, there!"'
  task :there, [:arg1, :arg2] do |t, args|
    puts "[wello:there] arg1=#{args[:arg1]}"
    puts "[wello:there] arg2=#{args[:arg2]}"
  end

  # To pass `arg1` and `arg2` to `wello:there`, you need to declare them here
  # as if `wello:hello` takes them (even though `wello:hello` doesn't use them
  # directly. I wonder if that sets off any lints. Prob not lmao why would it).
  desc 'Does a "hello, world."'
  task :hello => :there do |t, args|
    puts '[wello:hello] something'
  end

end
