class Category < ActiveRecord::Base
  self.primary_key = 'uuid'
  belongs_to :user

  has_many :advertisements, :through => :categorizations
  has_many :categorizations, dependent: :destroy

  before_create :set_integer_id
  def set_integer_id
    @last = Profile.all.order('integer_id desc').first
    if !@last.blank?
      @last_id = @last.integer_id
    else
      @last_id = 0
    end
    self.integer_id = @last_id + 1
  end

  before_create :set_uuid
  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def id
    self.uuid
  end

  def self.find(uuid)
    Category.find_by_uuid(uuid)
  end
end
