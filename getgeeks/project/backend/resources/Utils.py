from decimal import Decimal


def convert_to_decimal(target):
    return '{:.2f}'.format(Decimal(target))
