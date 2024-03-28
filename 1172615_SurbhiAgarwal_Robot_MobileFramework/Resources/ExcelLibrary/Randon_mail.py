# Create an instance of the Faker class
from faker import Faker
from robot.libraries.BuiltIn import BuiltIn

def random_email_generator():
 fake = Faker()
# Generate a random email ID
 random_email = fake.email()
 print("Random Email ID:", random_email)
 BuiltIn().set_global_variable("${email}",random_email)