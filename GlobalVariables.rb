# GlobalVariables.rb
require 'awesome_print'

$dead = true

class Ghost

  def is_dead?
    $dead # this is bad
  end

  def makeAlive()
    $dead = false
  end

end

ghost2 = Ghost.new()
ghost1 = Ghost.new()
puts "Is ghost1 Dead #{ghost1.is_dead?}"
ghost1.makeAlive
puts "Is ghost1 Dead #{ghost1.is_dead?}"
# By making the global $dead variable true, we made everyone alive
puts "Is ghost2 Dead #{ghost2.is_dead?}\n"

# EX: Internal global variables for ruby
puts ARGV # THis allows you to put an arvument in from the command line
# ARGV is the same as $*
puts ARGV.length
  # ruby GlobalVariables.rb hello test
  # => hello
  # => 2
ap ARGV

puts $$ # or Process.pid The process number of the Ruby running this script.


# Test if debug is on:
#puts $-d
#ap $*   # printing the command line arguments
#ap ARGV



# list of Ruby Global Variables
# $! The exception information message set by the last 'raise' (last exception thrown).
# $@ Array of the backtrace of the last exception thrown.
# $& The string matched by the last successful pattern match in this scope.
# $` The string to the left of the last successful match.
# $' The string to the right of the last successful match.
# $+ The last bracket matched by the last successful match.
# $1 to $9 The Nth group of the last successful regexp match.
# $~ The information about the last match in the current scope.
# $= The flag for case insensitive, nil by default (deprecated).
# $/ or $-0 The input record separator, newline by default.
# $\ The output record separator for the print and IO#write. Default is nil.
# $, The output field separator for the print and Array#join.
# $; or $-F The default separator for String#split.
# $. The current input line number of the last file that was read.
# $< An object that provides access to the concatenation of the contents of all the files given as command-line arguments, or $stdin (in the case where there are no arguments). Read only.
# $FILENAME Current input file from $<. Same as $<.filename.
# $> The destination of output for Kernel.print and Kernel.printf. The default value is $stdout.
# $ The last input line of string by gets or readline.
# $0 Contains the name of the script being executed. May be assignable.
# $* Command line arguments given for the script. Also known as ARGV
# $$ or Process.pid The process number of the Ruby running this script.
# $? The status of the last executed child process.
# $: or $LOAD_PATH Load path for scripts and binary modules by load or require.
# $" or $LOADED_FEATURES or $-I The array contains the module names loaded by require.
# $stderr The current standard error output.
# $stdin The current standard input.
# $stdout The current standard output.
# $-d or $DEBUG The status of the -d switch. Assignable.
# $-K or $KCODE Character encoding of the source code.
# $-v or $VERBOSE The verbose flag, which is set by the -v switch.
# $-a True if option -a ("autosplit" mode) is set. Read-only variable.
# $-i If in-place-edit mode is set, this variable holds the extension, otherwise nil.
# $-l True if option -l is set ("line-ending processing" is on). Read-only variable.
# $-p True if option -p is set ("loop" mode is on). Read-only variable.
# $-w True if option -w is set.
