require 'Backtrace_Array/version'
require 'Split_Lines'
def Backtrace_Array str_or_array
  arr = if str_or_array.is_a?(Enumerable)
          str_or_array
        else
          Split_Lines str_or_array
        end

  last_file = nil
  final = []
  arr.each { |l|
    pieces = l.split( %r!:(\d+):! )
    file = pieces.shift
    num  = pieces.shift
    (num = Integer num) if num
    code = pieces.join(':')

    if last_file != file
      final << [ file, [] ]
      last_file = file
    end

    final.last.last << [num, code]
  }

  final
end # === def Backtrace_Array
