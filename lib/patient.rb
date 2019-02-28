require 'pry'
class Patient
attr_accessor :name, :date, :doctor
@@all = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all do |appointment|
      appointment.doctor == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      # binding.pry
      appointment.doctor
    end
  end

end
