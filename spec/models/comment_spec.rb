require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'should validate content length' do
      c = Comment.all
      c.each(&:destroy)
      comment = build(:comment_empty)
      comment.validate
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end

    it 'should accept a good content' do
      c = Comment.all
      c.each(&:destroy)
      comment = build(:comment, post: create(:post))
      comment.validate
      expect(comment.valid?).to be true
    end
  end
end
