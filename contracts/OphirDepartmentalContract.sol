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
    mapping(string => bool) public departmentsAdded;

    modifier onlyOwner() {
        require(msg.sender == _owner, "Not owner.");
        _;
    }

    constructor() {
        _owner = msg.sender;
    }

    function addDepartment(string memory _dept, uint256 _number) 
    external 
    onlyOwner 
    {
        require(workersNumber[_dept] == 0, "Department existent.");
        require(_number != 0, "Number <= 0.");

        workersNumber[_dept] = _number;

        _addToArray(_dept);
    }

    function getDepartmentNumber(string memory _dept)
    external
    view
    returns (uint256)
    {
        return workersNumber[_dept];
    }

    function increaseDepartmentNumber(string memory _dept, uint256 _number) 
    external 
    onlyOwner 
    {
        workersNumber[_dept] += _number;
        _addToArray(_dept);
    }

    function _addToArray(string memory _dept) private {
        if (!departmentsAdded[_dept]) {
            departments.push(_dept);
            departmentsAdded[_dept] = true;
        }
    }
}