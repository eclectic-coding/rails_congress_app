class Member < ApplicationRecord
  def self.calculate_age
    Member.all.each do |member|
      now = Time.now.utc.to_date
      dob = member.date_of_birth.to_date

      age = now.year - dob.year - (now.month > dob.month || (now.month == dob.month && now.day >= dob.day) ? 0 : 1)

      member.update(age: age)
    end
  end
end
