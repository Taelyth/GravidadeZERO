import os
try:
    import config
except:
    pass


def factory_database():
    try:
        return {
            'banco': config.BANCO,
            'usuario': config.USUARIO,
            'senha': config.SENHA,
            'server': config.SERVER,
            'porta': config.PORTA
        }
    except:  # This should run on GitHub Actions
        return {
            'banco': os.environ['BANCO'],
            'usuario': os.environ['USUARIO'],
            'senha': os.environ['SENHA'],
            'server': os.environ['SERVER'],
            'porta': os.environ['PORTA']
        }
