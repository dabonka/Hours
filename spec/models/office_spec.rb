describe Office do
true
end

describe Office do
  let(:office) { create(:office) }

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :country }
    it { should validate_presence_of :town }
    it { should validate_presence_of :postindex }
    it { should validate_presence_of :address }
  end

end
