# Document contains native ruby modifications

# We are adding a new function to the Array class
class Array

  # From rails, transforms an array into a human-readable form.
  # Due to lack of ActiveSupport we must define this method manually
  def to_sentence
    case length
      when 0
        ""
      when 1
        self[0].to_s.dup
      when 2
        "#{self[0]}, and #{self[1]}"
      else
        "#{self[0...-1].join(", ")}, and #{self[-1]}"
    end
  end
end