class Doctor

    @@all = []

    attr_accessor :name, :date, :patient

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment (date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        appointments.map {  |appointment| appointment.patient}
    end



end
