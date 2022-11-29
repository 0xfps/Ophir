// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

/**
* @title OphirDepartmentalContractInterface.
* @author
* @dev 
*/
interface OphirDepartmentalContractInterface {
    function addDepartment(string memory _dept, uint256 _number) external;
    function getDepartmentNumber(string memory _dept)
    external
    view
    returns (uint256);
    function increaseDepartmentNumber(string memory _dept, uint256 _number) external;
}