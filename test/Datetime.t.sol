// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Datetime.sol";

contract DatetimeTest is Test, DateTime{

    function setUp() public {
    }

    function testParseTimestamp() public view {
        _DateTime memory temp = parseTimestamp(1668073202);
        console.log('year:',temp.year);
        console.log('month:',temp.month);
        console.log('day:',temp.day);
    }

    function testGetYear() public view {
        uint16 temp = getYear(1668073202);
        console.log('year:',temp);
    }

    function testGetHour() public view {
        uint8 temp = getHour(1668073202);
        console.log('hour:',temp);
    }

    function testGetMinute() public view {
        uint8 temp = getMinute(1668073202);
        console.log('minute:',temp);
    }

    function testGetSecond() public view {
        uint8 temp = getSecond(1668073202);
        console.log('second:',temp);
    }

    function testGetWeekday() public view {
        uint8 temp = getWeekday(1668073202);
        console.log('weekday:',temp);
    }

    function testToTimestamp() public view {
        uint temp = toTimestamp(2022, 8, 1, 0, 0, 0);
        console.log('timestamp:',temp);
    }
}
