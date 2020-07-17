using Genie.Router
using BooksController

route("/") do
  serve_static_file("welcome.html")
end

route("/error500") do
  error_500("Something went wrong")
end

route("/error404") do
  error_404("the page you want")
end

route("/hello") do
  "Hello,Genie"
end

 # 第１引数に URL、第２引数に対応コントローラーのメソッドを指定
 route("/books", BooksController.show_books)
