class Subject < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :timetable
  belongs_to :week

  has_many :attends
  belongs_to :user

  with_options numericality: { other_than: 1, message: '時間割、曜日を選択してください' } do
    validates :timetable_id
    validates :week_id
  end
end
