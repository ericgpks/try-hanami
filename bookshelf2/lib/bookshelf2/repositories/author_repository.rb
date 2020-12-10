class AuthorRepository < Hanami::Repository
  associations do
    has_many :books
  end
end
