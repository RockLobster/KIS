class Task < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 25

  has_many :fields
  has_many :measured_values
  has_many :appointments
  belongs_to :case_file
  has_many :uploaded_files
  has_one :treatment
  belongs_to :domain
  belongs_to :creator,:class_name => "User", :foreign_key => "creator_user_id"

  #task states
  OPEN = 1
  INPROGRESS = 2
  CLOSED = 3

  def self.state_open
    OPEN
  end

  def self.state_inprogress
    INPROGRESS
  end

  def self.state_closed
    CLOSED
  end

  def to_label
     "#{domain.name} | #{creator_comment} | #{deadline}"
  end

end
