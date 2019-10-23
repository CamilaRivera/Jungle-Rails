class Admin::DashboardController < Admin::BaseAdminController
  def show
    @categories = Category.all.map{ |category| { name: category.name, count: Product.where(category_id: category.id).count, id: category.id }}
    @categories_total = Category.all.length

    @products = Product.all.order(quantity: :desc).map{ |product| { name: product.name, count: product.quantity }}
    @products_quantity = @products.map{ |hash| hash[:count]}.sum
    @products_total = Product.all.length

  end
end
