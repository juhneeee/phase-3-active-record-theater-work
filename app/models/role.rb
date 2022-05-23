class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map {|a| a.actor}
    end
    def locations
        self.auditions.map {|a| a.location}
    end
    def lead
        if self.auditions.find_by(hired: true)
            self.auditions.find_by(hired: true).actor
        else
            "no actor has been hired for this role"
        end
    end
    def understudy
        if self.auditions.where(hired: true).second
            self.auditions.where(hired: true).second.actor  
        else
            "no actor has been hired for understudy for this role"
        end
    end
end