
from selenium import webdriver

from auth import key
# key contains the password field data
from selenium.webdriver.common.keys import Keys

try:
    logger = logging.getLogger('flipkart')
except:
    pass
finally:
    print "Nevermind"

user_name = "example@gmail.com"
driver = webdriver.Chrome()
driver.get("http://flipkart.com")

login_button = driver.find_element_by_class_name('login-required')
login_button.click()
user_email = driver.find_element_by_class_name('user-email')
user_email.send_keys(user_name)
user_pass = driver.find_element_by_class_name('user-pwd')
user_pass.send_keys(key)
login_btn = driver.find_element_by_class_name('login-btn')
login_btn.click()
