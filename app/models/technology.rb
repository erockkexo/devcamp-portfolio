class Technology < ApplicationRecord

  #we started with rails g model Technology name:string portfolio:references
  #then we migrated it rails db:migrate
  #it adds this into the model file automatically
  belongs_to :portfolio
end
