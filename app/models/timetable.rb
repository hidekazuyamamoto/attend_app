class Timetable < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1時限目' },
    { id: 3, name: '2時限目' },
    { id: 4, name: '3時限目' },
    { id: 5, name: '4時限目' },
    { id: 6, name: '5時限目' },
    { id: 7, name: '6時限目' }
  ]
  include ActiveHash::Associations
  has_many :subjects
end