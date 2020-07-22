module TasksController
using Genie.Renderer

struct Task
  id::Int
  content::String
  done::Bool
end

const SampleTasks = Task[
  Task(1,"歯医者に行く",false),
  Task(2,"はがきを出す",true),
  Task(3,"定期券を買う",false),
]

function index()
  html(:tasks, :tasks, tasks = SampleTasks)
end

end
