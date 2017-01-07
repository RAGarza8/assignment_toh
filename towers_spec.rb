require "./towers.rb"

  describe "instructions" do
    it "puts instructions for game" do
      instructions.expect == "Welcome to Tower of Hanoi!"
    end
  end

  describe "opening_board" do
    it "renders the opening board" do
      expect(board).to match_array([[2, 1, 0], [], []])
    end
  end

