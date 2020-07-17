module GenieBookShelf

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = GenieBookShelf))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = GenieBookShelf.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
