# @version >=0.2 <0.3.0 
 
event Transfer:
    sender: indexed(address)
    receiver: indexed(address)
    amount: uint256
 
 
event Approval:
    sender: indexed(address)
    receiver: indexed(address)
    amount: uint256
 
 
#your interface
 
#your params
 
# ERC20 details
name: public(String[64])
symbol: public(String[32])
balanceOf: public(HashMap[address, uint256])
allowance: public(HashMap[address, HashMap[address, uint256]])
totalSupply: public(uint256)
decimals: public(uint256)
owner: public(address)
 
NAME: constant(String[64]) = "MyVyperToken"
SYMBOL: constant(String[32]) = "VT"
DECIMALS: constant(uint256) = 18
 
 
@external
def __init__(_supply: uint256):
    self.owner = msg.sender
    self.name = NAME
    self.symbol = SYMBOL
    supply: uint256 = _supply * 10 ** DECIMALS
    self.totalSupply = supply
    self.decimals = DECIMALS
 
 
@internal
def _mint(receiver: address, amount: uint256):
    self.balanceOf[receiver] += amount
    self.totalSupply += amount
 
    log Transfer(ZERO_ADDRESS, receiver, amount)
 
 
@internal
def _burn(sender: address, amount: uint256):
    self.balanceOf[sender] -= amount
    self.totalSupply -= amount
 
    log Transfer(sender, ZERO_ADDRESS, amount)
 
 
@internal
def _transfer(sender: address, receiver: address, amount: uint256):
    self.balanceOf[sender] -= amount
    self.balanceOf[receiver] += amount
 
    log Transfer(sender, receiver, amount)
 