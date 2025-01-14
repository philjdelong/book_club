require 'rails_helper'

RSpec.describe Book, type: :model do
  describe  "validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :pages}
    it {should validate_presence_of :publication_year}
    it {should belong_to :author}
  end
end
