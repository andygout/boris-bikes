feature 'member of the public returns bike' do
  scenario 'bike cannot be docked when station is full' do
    docking_station = DockingStation.new
    docking_station.capacity.times {docking_station.dock Bike.new}
    expect {docking_station.dock Bike.new}.to raise_error 'Docking station full'
  end

  scenario 'bike can be reported when broken' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    expect {docking_station.dock bike}.not_to raise_error
  end
end