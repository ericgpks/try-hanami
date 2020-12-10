class BookRepository < Hanami::Repository
  associations do
    belongs_to :author
  end

  def find_with_author(id)
    aggregate(:author).where(id: id).as(Book).one
  end
end
