module Todolist

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Todolist))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = Todolist.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
