from faker import Faker
import bcrypt

fake = Faker('pt_BR')


def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


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


def factory_user_login():
    return {
        'name': 'Jacks',
        'lastname': 'Tests',
        'email': 'teste@teste.com',
        'password': 'pwd123'
    }


def factory_user_be_geek():
    return {
        'name': 'Harry',
        'lastname': 'Potter',
        'email': 'harry@potter.com',
        'password': 'pwd123',
        'geek_profile': {
            'whatsapp': '11999999999',
            'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus,'
                    ' ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando,'
                    ' reinstalando o SO, trocando algum componente físico'
                    ' e porque não remover o baidu?',
            'printer_repair': 'Sim',
            'work': 'Ambos',
            'cost': '100'
        }
    }
