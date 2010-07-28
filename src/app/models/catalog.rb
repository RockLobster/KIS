class Catalog < ActiveRecord::Base
  validates_presence_of :year,:language,:root_node
  belongs_to :root_node , :class_name => "Node" , :foreign_key => "root_node_id" , :dependent => :destroy
  belongs_to :catalog_type
  has_many :medical_templates
  
  def catalog_select_name
       "#{catalog_type.name} [#{year}] (#{language})"
  end

end
