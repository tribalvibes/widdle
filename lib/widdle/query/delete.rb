class Widdle::Query::Delete
  def initialize(index, *ids)
    @index = index
    @ids   = ids.flatten
  end
  
  def to_s
    if @ids.length > 1
      "DELETE FROM #{@index} WHERE id IN (#{@ids.join(', ')})"
    else
      "DELETE FROM #{@index} WHERE id = #{@ids.first}"
    end
  end
end
