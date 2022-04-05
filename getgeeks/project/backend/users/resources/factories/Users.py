def factory_user_session(target):
    name = 'Jacks Test2'
    email = 'teste2@teste.com'
    password = 'pwd123'

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }
    return data[target]


def factory_new_user():
    return {
        'name': 'Clint Barton',
        'email': 'barton@teste.com',
        'password': 'pwd123'
    }
