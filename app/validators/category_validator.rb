class CategoryValidator < ActiveModel::Validator
  def validate(record)
    valid_categories = ["Fiction", "Non-Fiction"]

    unless valid_categories.include?(record.category)
      record.errors[:category] << "That is an incorrect Category."
    end
  end
end