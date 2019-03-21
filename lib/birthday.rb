class Birthday
  def self.days_until_birthday(birthday)
    current_date = DateTime.now
    birth_date = Date.parse(birthday)
    if birth_date.mjd - current_date.mjd < 0
      return 365 + (birth_date.mjd - current_date.mjd)
    else
      return birth_date.mjd - current_date.mjd
    end
  end
end
