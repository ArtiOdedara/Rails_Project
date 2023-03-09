class User < ApplicationRecord

    validates :fname, :lname, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true
    
    validates :username, exclusion: { in: %w(test ror_trainee),
    message: "%{value} is saved." }
    
    
    validates :term_end_date, comparison: { greater_than: :term_start_date }
    
    validates :phone_number, length: { is: 10 }
    validates :zip_code, length: { minimum: 6 }
    validates :password, length: { in: 6..20 }
    
    before_commit :user_created, on: :create
    private
    def user_created
      puts "Creating User"
    end
    private
    
    after_create :user_created
    private
    def user_created
      puts "User Created"
    end
  
    before_save do
      puts "User data will be saved"
    end
  
    # after_save :age_calculation
    # private
    # def age_calculation
    #   if self.Date_Of_Birth.present?
    #     puts "Data saved successfully"
    #     age = DateTime.now.year - self.dob.year
    #     puts "Age of Student is #{age}"
    #   else
    #     puts "Age is not calculated"
    #   end
    # end
    after_save :pswd_validates
    private
    def pswd_validates
      if self.password.length < 6
        puts "Incorrect Password"
      else
        puts "Successfully entered password"
      end 
    end
    
    before_commit do
      puts "Commit will be done."
    end
    after_commit do
      puts "Commit successfull."
    end
  
    before_destroy do
      puts "User will be destroy"
    end
    around_destroy do
      puts "User is not destroy"
    end
  end