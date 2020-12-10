module Web
  module Controllers
    module Books
      class Show
        include Web::Action

        expose :book

        def call(params)
          book_repo = BookRepository.new
          # @book = book_repo.find(1)
          @book = book_repo.find_with_author(1)
        end
      end
    end
  end
end
