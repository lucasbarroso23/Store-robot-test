import random
import string

__version__ = '1.0.0'


class CustomLib(object):
    ROBOT_LIBRARY_VESION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def get_random_name(self, email_lenght):
        letters = string.ascii_lowercase[:12]
        return ''.join(random.choice(letters) for i in range(email_lenght))

    def generate_random_email(self, lenght):
        domains = ["hotmail.com", "gmail.com", "outlook.com"]
        return self.get_random_name(lenght) + '@' + random.choice(domains)
