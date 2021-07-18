battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
battery_status=`acpi -a | awk -F": " '{ print $2 }'`

if [ $battery_status == "off-line" ]
then
    if [ $battery_level -le 10 ]
    then
        notify-send "Battery critically low" "Battery level is ${battery_level}%" -u critical -i /usr/share/icons/Marwaita-Dark/24x24@2x/panel/battery-empty.svg
    elif [ $battery_level -le 25 ]
    then
        notify-send "Battery low" "Battery level is ${battery_level}%" -u normal -i /usr/share/icons/Marwaita-Dark/24x24@2x/panel/battery-low.svg
    fi
fi
