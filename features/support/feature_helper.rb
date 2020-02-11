module FeatureHelper
  def login(username, password)
    @login_page = LoginPage.new
    @login_page.load

    @login_page.email_filed.set username
    @login_page.password_filed.set password
    @login_page.login_btn.click
  end
end

module AsyncSupport
  def eventually (timeout = 30, polling_interval = 0.1)
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end
end
World(AsyncSupport)

def select_option(css_selector, value)
  find(:css, css_selector).find(:option, value).select_option
end