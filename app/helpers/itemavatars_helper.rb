module ItemavatarsHelper
  def is_admin?
    @admin = User.first
  end
end
