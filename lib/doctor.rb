class Doctor

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

  def new_appointment(patient, date)
    new = Appointment.new(date, patient, self)
  end

  def appointments
      Appointment.all.select do |appointment_instance|
        appointment_instance.doctor == self
      end
  end

  def patients
    Appointment.all.map do |appointment_instance|
      if appointment_instance.doctor == self
        appointment_instance.patient
      end
    end
  end

end
