class Hash

  # Returns a new hash less the given keys.
  def except(*less_keys)
    hash = dup
    less_keys.each{ |k| hash.delete(k) }
    hash
  end

  # Replaces hash with new hash less the given keys.
  #
  #   h = {:a=>1, :b=>2, :c=>3}
  #   h.except!(:a)  #=> {:b=>2,:c=>3}
  #   h              #=> {:b=>2,:c=>3}
  #
  # Returns the hash.
  def except!(*rejected)
    rejected.each{ |k| delete(k) }
    self
  end

  # Replaces hash with new hash less the given keys.
  # This returns the hash of keys removed.
  #
  #   h = {:a=>1, :b=>2, :c=>3}
  #   h.except!(:a)  #=> {:a=>1}
  #   h              #=> {:b=>2,:c=>3}
  #
  # Returns a Hash of the removed pairs.
  def remove!(*rejected)
    removed = {}
    rejected.each{ |k| removed[k] = delete(k) }
    removed
  end

end

