class RubyracerController < ApplicationController
  def index
    cxt = V8::Context.new
    cxt['foo'] = "bar"
    cxt.eval 'var val = {num: 5, isTruthy: function (arg) { return !!arg }}'
    puts cxt.eval('foo') # => "bar"
  end
end
