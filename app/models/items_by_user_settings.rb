class ItemsByUserSettings
  include Procto.call
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def call
    sizes = user.sizes
    items = Item.joins(item_sizes: :size)
                .where(gender: user.gender)
                .where(item_sizes: {sizes: {value: sizes}})
                .distinct
    items.any? ? items : Item.all
  end
end

