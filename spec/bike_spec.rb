require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  it 'can be reported broken' do
    subject.report_broken
    expect(subject.working = false).to be_falsey
  end

end