require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '/dev/tty.usbserial-A700636n'
device :firmata

work do
  puts "Firmware name #{firmata.firmware_name}"
  puts "Firmata version #{firmata.version}"
  10.times do
    firmata.digital_write(13, Firmata::Board::HIGH)
    firmata.delay 1

    firmata.digital_write(13, Firmata::Board::LOW)
    firmata.delay 1
  end
end