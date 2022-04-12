from faker import Faker
import bcrypt

fake = Faker('pt_BR')


def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek'),
        factory_user('search_alien'),
        factory_user('search_common')
    ]


def factory_user(target):

    first_name = fake.first_name()
    last_name = fake.last_name()

    data = {
        'faker': {
            'name': first_name,
            'lastname': last_name,
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': first_name,
            'lastname': last_name,
            'email': first_name.lower().replace(' ', '.') + '.' + last_name.lower().replace(' ', '.') + '&gmail.com',
            'password': 'pwd123'
        },
        'login': {
            'name': 'Jacks',
            'lastname': 'Tests',
            'email': 'teste@teste.com',
            'password': 'pwd123'
        },
        'be_geek': {
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
        },
        'attempt_be_geek': {
            'name': 'Clark',
            'lastname': 'Kent',
            'email': 'clark@superman.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '11999999999',
                'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus,'
                        ' ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando,'
                        ' reinstalando o SO, trocando algum componente físico'
                        ' e porque não remover o baidu?',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '150'
            }
        },
        'search_alien': {
            'name': 'Dok',
            'lastname': 'Ock',
            'email': 'dok@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '21999991001',
                'desc': 'Faço conserto de qualquer impressora. Matricial a fita, Matricial a fita colorida, a laser,'
                        ' a jato de tinta e também impressora 3D.',
                'printer_repair': 'Sim',
                'work': 'Presencial',
                'cost': '250'
            }
        },
        'search_common': {
            'name': 'Peter',
            'lastname': 'Parker',
            'email': 'parker@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '21999991002',
                'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake,'
                        ' Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze,'
                        ' Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS.',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '150'
            }
        }
    }

    return data[target]
