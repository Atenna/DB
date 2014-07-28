class Document < ActiveRecord::Base
has_many :documents_heuristics
has_many :heuristics, :through => :documents_heuristics
has_many :attachments
has_one :crz_document_detail

def to_indexable
    {
        customer: details.customer,
        content: attachments.first.pages.map(&:text).join(' ')
    }
end

end
