// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import {OphirDepartmentalContractInterface} 
from "../interfaces/OphirDepartmentalContractInterface.sol";

/**
* @title OphirDepartmentalContract.
* @author
* @dev 
*/
contract OphirDepartmentalContract is 
OphirDepartmentalContractInterface 
{
    mapping(string => uint256) public workersNumber;
    string[] public departments;
    address private _owner;

    modifier onlyOwner() {
        require(msg.sender == _owner, "Not owner.");
        _;
    }

    constructor() {
        _owner = msg.sender;
    }

    function addDepartment(string memory dept, uint256 number) 
    external 
    onlyOwner 
    {
        require(workersNumber[dept] == 0, "Department existent.");
        require(number != 0, "Number <= 0.");

        workersNumber[dept] = number;
        departments.push(dept);
    }

    function getDepartmentNumber(string memory dept)
    external
    view
    returns (uint256)
    {
        return workersNumber[dept];
    }

    function increaseDepartmentNumber(string memory dept, uint256 number) 
    external 
    onlyOwner 
    {
        workersNumber[dept] += number;
    }
}