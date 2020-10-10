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
        self.day == day
    end

    def to_s
        "#{ self.location }#{ self.purpose }#{ self.day }#{ self.hour }#{ self.min }"
    end

end

class DailyAppointment < Appointment 
    def occurs_on?( hour, min )
        self.hour == hour && self.min == min
    end

    def to_s
        "#{ self.location }#{ self.purpose }#{ self.hour }#{ self.min }"
    end
end

class OneTimeAppointment < Appointment 
end
