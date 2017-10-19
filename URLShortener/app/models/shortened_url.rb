class ShortenedUrl < ApplicationRecord

  validates :short_url, uniqueness: true
  validates :long_url, presence: true



  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :submitter_id,
    class_name: :User

  has_many :visits,
    primary_key: :id,
    foreign_key: :short_url_id,
    class_name: :Visit

  has_many :visitors,
    through: :visits,
    source: :user



  def self.random_code
    code = SecureRandom.urlsafe_base64

    while ShortenedUrl.exists?(short_url: code)
        code = SecureRandom.urlsafe_base64
    end
    code
  end

  def self.make(user, original)
    code = ShortenedUrl.random_code
    ShortenedUrl.create!(submitter_id: user.id, long_url:original, short_url: code)
  end

  def num_clicks
    visitors.select(:user_id)
            .count
  end

  def num_uniques
    visitors.select(:user_id)
            .distinct
            .count
  end

  def num_recent_uniques
    visitors.select(:user_id)
            .where(created_at: 200.minutes.ago)
            .distinct
            .count

  end




end
