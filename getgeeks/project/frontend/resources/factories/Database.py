import os


def factory_database():
    try:  # This should run locally
        import config

        database = {
            'banco': config.BANCO,
            'usuario': config.USUARIO,
            'senha': config.SENHA,
            'server': config.SERVER,
            'porta': config.PORTA
        }
    except:  # This should run on GitHub Actions
        database = {
            'banco': os.environ['BANCO'],
            'usuario': os.environ['USUARIO'],
            'senha': os.environ['SENHA'],
            'server': os.environ['SERVER'],
            'porta': os.environ['PORTA']
        }
    return database
