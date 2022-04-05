class AuthorizationContext
  attr_reader :user, :recipe
def initialize(user, recipe)
  @user = user
  @recipe = recipe
end
end
