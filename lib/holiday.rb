require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holiday|
    if season == :summer
      holiday.each do |attribute, data|
        if attribute == :fourth_of_july
          data.to_a
          return activity = data.last
        end
      end
    end 
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  puts holiday_hash[:winter][:christmas] = supply
  puts holiday_hash[:winter][:new_years] = supply

  # holiday_hash.each do |season, holiday|
  #   new_sym = {:supply => []}
  #   if season == :winter
  #       holiday.merge(new_sym)
  #       puts holiday[:supply]
  #   end
  # end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  puts holiday_hash[:spring][:memorial_day] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  puts holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
    if season == :winter
      return holiday.values.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts season.capitalize.to_s + ":"
    holiday.each do |name_of_holiday, supply|
      # below iterates through each name of holiday and uses global sub method to replace underscore w/ space, then splits baserd on space, capitalizes each, joins back based on space, concatenates w/ the supply, that is turned into a string from an array and joined by seperator (in this case seperator is comma, but could be something else)
      puts "  " + "#{name_of_holiday}: ".gsub("_", " ").split.map(&:capitalize).join(' ') + " #{supply.join(", ")}"
    end
  end

  
  
  
end

def all_holidays_with_bbq(holiday_hash)
# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
bbq_day = []
holiday_hash.each do |season, holiday|
  # if season == :spring || season == :summer
    holiday.each do |day, stuff|
      if stuff.include?("BBQ")
        bbq_day << day
      end
    end
  end
  return bbq_day
end







