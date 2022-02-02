pragma solidity ^0.4.24;


import { ERC20Basic as linkERC20Basic } from "../interfaces/ERC20Basic.sol";
import { SafeMathChainlink as linkSafeMath } from "./SafeMathChainlink.sol";


/**
 * @title Basic token
 * @dev Basic version of StandardToken, with no allowances. 
 */
abstract contract BasicToken is linkERC20Basic {
  using linkSafeMath for uint256;

  mapping(address => uint256) balances;

  /**
  * @dev transfer token for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) public override virtual returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param _owner The address to query the the balance of. 
  * @return balance An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address _owner) public view override returns (uint256 balance) {
    return balances[_owner];
  }

}
