class Egovsk::Attachment < Attachment
  belongs_to :document
  has_many :pages
end
