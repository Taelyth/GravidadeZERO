from faker import Faker

fake = Faker('pt_BR')


def factory_user():
    user = {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': fake.free_email(),
        'password': 'pwd123'
    }
    return user


def factory_wrong_email():
    first_name = fake.first_name()
    last_name = fake.last_name()

    return {
        'name': first_name,
        'lastname': last_name,
        'email': first_name.lower().replace(' ', '.') + '.' + last_name.lower().replace(' ', '.') + '&gmail.com',
        'password': 'pwd123'
    }
