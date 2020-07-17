module BooksController

using Dates

  struct Book
    title::String
    publication_data::Date
  end

  # 本
  books=[
  Book("すごいJulia",Date(2019, 3, 3)),
  Book("たのしい Julia", Date(2019, 2, 7)),
  Book("みんなの Julia", Date(2019, 1, 26)),
  Book("基礎からわかる Julia", Date(2018, 12, 15)),
  Book("スターティング Julia", Date(2018, 11, 28)),
  Book("やさしい Julia", Date(2018, 10, 18)),
  Book("苦しんで覚える Julia", Date(2018, 9, 24)),
  Book("はじめての Julia", Date(2018, 8,19)),
  Book("ネコでもわかる Julia", Date(2018, 7, 7))
  ]

  # mapreduce 関数を使って本のリストを返す
  function show_books()
    response="
      <h1>Julia Books</h1>
      <ul>
        $( mapreduce(book -> "<li>$(book.title)
        ∕$(book.publication_date)</li>", *, books) )
      </ul>
    "
    return response
  end
end
