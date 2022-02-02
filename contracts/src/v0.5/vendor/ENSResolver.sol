pragma solidity ^0.5.0;

interface ENSResolver {
  function addr(bytes32 node) external view returns (address);
}
