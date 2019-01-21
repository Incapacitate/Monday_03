require "pry"

class User
  attr_accessor :name, :email
  @@users_all = []

  def initialize(email_to_save)
    @email = email_to_save
    @@users_all << @email
  end

  def self.all
  	return @@users_all
  end

  def self.find_by_email(email)
  	@@users_all.each do |user|
  		if user == email
  			return user
  		end
  	end
  end


end

binding.pry
puts "end of file"