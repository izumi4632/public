using Genie.Router
using TasksController # 追加

route("/") do
  serve_static_file("welcome.html")
end

# 追加（タスク表示）
route("/tasks", TasksController.index)
