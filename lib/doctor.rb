class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.select { |patient| patient.doctor == self}
  end
  
  def new_appointment(patient, date, doc=self)
    Appointment.new(patient, date, doc)
    # Song.name.artist = self
  end
  
  def patients
    appointments.map(&:patient)
  end
  
end