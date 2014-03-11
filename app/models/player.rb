class Player < ActiveRecord::Base
  belongs_to :season, inverse_of: :players
  belongs_to :league
  belongs_to :division
  belongs_to :team, inverse_of: :players

  validates :season, :league, :division, :team, presence: true
  validates :surname, :given_name, :position, presence: true
  validates :at_bats, :numericality => { greater_than: 0 }

end