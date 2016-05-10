require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
   data.each do |season, arr|
    arr.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, arr|
    arr.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count+=1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  count = 0
  ave_age = 0
  data[season].each do |contestant_hashes|
    age_sum += contestant_hashes["age"].to_f
    count+=1
  end
  ave_age = (age_sum/count).round
end
