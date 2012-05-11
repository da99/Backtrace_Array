
describe "Backtrace_Array string" do
  
  before {
    @arr = Backtrace_Array(%~
file1:1:in >main
file1:2:in >main
file2:3:in >main
file2:4:in >main
                           ~)
  }

  it "returns an Array of 2 element Arrays" do
    @arr.map(&:size)
    .should == [2, 2]
  end

  it "sets the first element equal to filename" do
    @arr.map(&:first)
    .should == %w{ file1 file2 }
  end
  
  it "sets the second element to a 2 element line/code pair" do
    @arr.map(&:last)
    .should == [
      [[1, 'in >main'], [2, 'in >main']], 
      [[3, 'in >main'], [4, 'in >main']] 
    ]
  end

end # === Backtrace_Array string

describe "Backtrace_Array array" do
  
  before {
    @arr = Backtrace_Array(Split_Lines %~
file1:1:in >main
file1:2:in >main
file2:3:in >main
file2:4:in >main
                           ~)
  }

  it "returns an Array of 2 element Arrays" do
    @arr.map(&:size)
    .should == [2, 2]
  end

  it "sets the first element equal to filename" do
    @arr.map(&:first)
    .should == %w{ file1 file2 }
  end
  
  it "sets the second element to a 2 element line/code pair" do
    @arr.map(&:last)
    .should == [
      [[1, 'in >main'], [2, 'in >main']], 
      [[3, 'in >main'], [4, 'in >main']] 
    ]
  end
  
end # === Backtrace_Array array

