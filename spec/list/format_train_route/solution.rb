module Solution1

  def self.format_train_route(stations)
    str = "Train is calling at"
    last_index = stations.length - 1

    stations.each_index do |i|
      case i
      when 0
        str += " #{stations[i]}"
      when last_index
        str += " and #{stations[i]}"
      else
        str += ", #{stations[i]}"
      end
    end

    str
  end

end

module Solution2

  def self.format_train_route(stations)
    prefix = "Train is calling at "

    if stations.length == 1
      return prefix + stations[0]
    end

    last_station = stations.drop(stations.length - 1).join

    following_stations = stations.take(stations.length - 1).join(', ')

    "#{prefix}#{following_stations} and #{last_station}"
  end

end