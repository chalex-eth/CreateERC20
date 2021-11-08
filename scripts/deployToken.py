from brownie import ERC20
from scripts.helpful_scripts import get_account

SUPPLY_TOKEN = 100


def deployToken():
    ERC20.deploy(SUPPLY_TOKEN, {"from": get_account()})


def main():
    deployToken()
