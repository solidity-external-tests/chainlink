pragma solidity 0.4.24;

interface ENSResolver {
  function addr(bytes32 node) external view returns (address);
}
