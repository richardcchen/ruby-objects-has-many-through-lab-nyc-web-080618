require "pry"

class Patient

  attr_accessor :name
  attr_reader

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    a = Appointment.new(date, self, doctor)
    #binding.pry
  end

  def appointments
    Appointment.all.select do |appointment_instance|
      appointment_instance.patient == self
    end
  end

  def doctors
    Appointment.all.map do |appointment_instance|
      if appointment_instance.patient == self
        appointment_instance.doctor
      end
    end
  end
end
