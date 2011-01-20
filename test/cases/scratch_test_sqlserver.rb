require 'cases/sqlserver_helper'
require 'models/book'

class ScratchTestSqlserver < ActiveRecord::TestCase

  should 'pass' do
    Book.limit(10).all
    # assert_sql(/SELECT TOP \(10\)/) { Book.limit(10).all }
  end
    
  
end

