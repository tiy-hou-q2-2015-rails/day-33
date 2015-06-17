class Contact < ActiveRecord::Base

  validates :first_name, :last_name, :email, :phone, :company_name, presence: true

  def full_name
    [last_name, first_name].join(", ")
  end
end
