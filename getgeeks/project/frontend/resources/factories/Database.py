import config


def factory_database():
    database = {
        'banco': config.BANCO,
        'usuario': config.USUARIO,
        'senha': config.SENHA,
        'server': config.SERVER,
        'porta': config.PORTA
    }
    return database
