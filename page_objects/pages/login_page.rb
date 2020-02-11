class LoginPage < SitePrism::Page
  set_url 'https://member-portal-dev.healthiestyou.com/user/sign-in'

  element :email_filed, :xpath, '/html/body/div/div/div/div[1]/div[2]/div/div/div[2]/form/div[1]/div/div/div/input'
  element :password_filed, :xpath, '/html/body/div/div/div/div[1]/div[2]/div/div/div[2]/form/div[2]/div/div/div/input'
  element :login_btn, :xpath, '/html/body/div/div/div/div[1]/div[2]/div/div/div[2]/form/div[3]/div/button/span'
end