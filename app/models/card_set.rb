class CardSet < ActiveRecord::Base
  has_many :cards
  belongs_to :block

  def to_s
    str = '{ :id => ' + id.to_s + ', '
    str = str + ':name => "' + name.gsub(/"/, "'") + '", '
    str = str + ':myr_id => "' + myr_id + '", ' if myr_id
    str = str + ':lackey_id => "' + lackey_id + '", ' if lackey_id
    str = str + ':supported_codes => "' + supported_codes + '", ' if supported_codes
    str = str + ':core_num => ' + core_num.to_s + ', ' if core_num
    str = str + ':block_id => ' + block_id.to_s + ' ' 
    str = str + '}'
		str
  end
end
