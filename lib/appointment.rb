require "pry"
class Appointment

  attr_accessor :patient, :doctor, :date
  attr_reader

  @@all = []

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
