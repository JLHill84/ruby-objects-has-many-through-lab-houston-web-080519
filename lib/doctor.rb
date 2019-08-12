# class Doctor
  
#   attr_accessor :name
  
#   @@all = []
  
#   def self.all
#     @@all
#   end
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def appointments
#     Appointment.all.select { |app| app.doctor == self}
#   end
  
#   def new_appointment(patient, date, doc=self)
#     Appointment.new(patient, date, doc)
#     # Song.name.artist = self
#   end
  
#   def patients
#     appointments.map(&:patient)
#   end
  
# end

Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@JLHill84 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.

 
0
0 6 JLHill84/ruby-objects-has-many-through-lab-houston-web-080519
forked from learn-co-students/ruby-objects-has-many-through-lab-houston-web-080519
 Code  Pull requests 0  Projects 0  Security  Insights  Settings
ruby-objects-has-many-through-lab-houston-web-080519/lib/doctor.rb
@maxwellbenton maxwellbenton aligns solution/readme appointments#initialization
1769d7e 12 days ago
@SophieDeBenedetto @maxwellbenton
27 lines (20 sloc)  387 Bytes
    
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    appointments.map(&:patient)
  end
end
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
