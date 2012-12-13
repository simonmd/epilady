class Patient < ActiveRecord::Base
  attr_accessible :age,
    :code,
    :name,
    :patid,
    :sex,
    :infoclinica15,
    :infoclinica3
  has_many :reports
end
