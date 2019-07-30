require 'time'
require 'pry'

def clock_angle(time)
    # code your solution here
    # Parse the inputted time
    colon_position = time.index(":")
    hour = time[0..(colon_position - 1)].to_f
    minute = time[(colon_position + 1)..(time.length - 1)].to_f

    # Find the angle of each hand
    min_hand_angle = (minute / 60) * 360
    hour_hand_angle = (((hour * 60) + minute) / 720) * 360

    # Find the angle between each hand
    difference_angle = (hour_hand_angle - min_hand_angle).abs

    # Find the acute angle between each hand
    if difference_angle > 180
        difference_angle = 360 - difference_angle
    else
        difference_angle
    end

end