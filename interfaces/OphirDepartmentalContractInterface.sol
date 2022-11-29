// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

/**
* @title OphirDepartmentalContractInterface.
* @author
* @dev 
*/
interface OphirDepartmentalContractInterface {
    function addDepartment(string memory dept, uint256 number) external;
    function getDepartmentNumber(string memory dept)
    external
    view
    returns (uint256);
    function increaseDepartmentNumber(string memory dept, uint256 number) external;
}