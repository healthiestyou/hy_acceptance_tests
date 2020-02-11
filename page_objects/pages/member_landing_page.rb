class Banner< SitePrism::Page
  set_url 'https://member-portal-dev.healthiestyou.com/today'

  element :baner, :xpath, '/html/body/div[3]/div/div/div'
end

class LandingPage< SitePrism::Page
  element :header
end
