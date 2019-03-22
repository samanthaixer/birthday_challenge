class Birthday
  def self.days_until_birthday(birthday)
    current_date = DateTime.now
    birth_date = Date.parse(birthday)
    self.compare_dates(current_date, birth_date)
  end

  def self.compare_dates(current_date, birth_date)
    return birth_date.mjd - current_date.mjd if birth_date.mjd - current_date.mjd >= 0
    return 365 + (birth_date.mjd - current_date.mjd)
  end
end
