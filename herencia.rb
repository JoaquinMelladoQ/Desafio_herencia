class Appointment 
    attr_accessor :location, :purpose,
    :hour, :min

    def initialize( location, purpose, hour, min )
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
    
end

class MonthlyAppointment < Appointment 
    attr_accessor :location, :purpose,
    :hour, :min, :day

    def initialize( location, purpose, hour, min, day )
        super( location, purpose, hour, min )
        @day = day
    end

    def occurs_on?( day )
        day == self.day
    end

    def to_s
        
    end

end

class DailyAppointment < Appointment 
end

class OneTimeAppointment < Appointment 
end
