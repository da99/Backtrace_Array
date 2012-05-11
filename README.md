
Backtrace\_Array
================

A Ruby gem to alter structure of a backtrace:

   Original Backtrace:

   [ String, String, String ]

   New Array:

   [
     [ unique file 1, [ [line, code], [line, code], ... ] ]
     [ unique file 2, [ [line, code], [line, code], ... ] ]
     [ unique file 3, [ [line, code], [line, code], ... ] ]
    
   ]

This lets you present it in your views as:

<p>
  <pre>
  <b style="color: purple;">unique file 1</b>
  <b>line</b>: code
  <b>line</b>: code
  <b>line</b>: code

  <b style="color: purple;">unique file 2</b>
  <b>line</b>: code
  <b>line</b>: code
  <b>line</b>: code
  </pre>
</p>

Installation
------------

    gem install Backtrace_Array

Usage
------

    require "Backtrace_Array"
    
    begin
      raise
    rescue Object => e
      Backtrace_Array $?.backtrace
    end

    # or ...
    Backtrace_Array %~
      file1:1: in `new'
      file2:2: in `<main>'
      file3:3: in `eval'
    ~


Run Tests
---------

    git clone git@github.com:da99/Backtrace_Array.git
    cd Backtrace_Array
    bundle update
    bundle exec bacon spec/lib/main.rb

"I hate writing."
-----------------------------

If you know of existing software that makes the above redundant,
please tell me. The last thing I want to do is maintain code.

