require('rspec')
require('coincounter')

describe('Fixnum#coincounter') do

  it("counts one quarter correctly") do
    expect((25).coincounter()).to(eq([1,0,0,0]))
  end

  it("counts more than one quarter correctly when no other coins required") do
    expect((50).coincounter()).to(eq([2,0,0,0]))
  end

  it("counts quarters and dimes correctly when no nickles or pennies required") do
    expect((60).coincounter()).to(eq([2,1,0,0]))
  end

  it("counts quarters and dimes and nickels correctly when no pennies required") do
    expect((65).coincounter()).to(eq([2,1,1,0]))
  end

  it("counts quarters and dimes and nickels and pennies correctly") do
    expect((68).coincounter()).to(eq([2,1,1,3]))
  end

end
