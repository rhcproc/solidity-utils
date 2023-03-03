## Ethereum Date and Time tools

Contract which implements utilities for working with datetime values in ethereum. [The previously developed code](https://github.com/pipermerriam/ethereum-datetime) is not maintained, so it has been modified to work in the current solidity version (v0.8.13).

 
To test, you need to use the ``forge test -vv`` command.

### Simple settings for forge (Linux & Mac)

``$ curl -L https://foundry.paradigm.xyz | bash
``

``$ foundryup``




### DateTime struct

Internally, the following **struct** is used to represent date-time object.

```
struct DateTime {
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 hour;
        uint8 minute;
        uint8 second;
        uint8 weekday;
}
```


### API

* `isLeapYear(uint16 year) constant returns (bool)`

Given an integer year value, returns whether it is a leap year.


* `parseTimestamp(uint timestamp) internal returns (DateTime dt)`

Given a unix timestamp, returns the `DateTime` representation of it.


* `getYear(uint timestamp) constant returns (uint16)`

Given a unix timestamp, returns the `DateTime.year` value for the timestamp.


* `Deprecated` `getMonth(uint timestamp) constant returns (uint16)`

	- Deprecated - parseTimestamp instead


* `Deprecated` `getDay(uint timestamp) constant returns (uint16)`

 - Deprecated - parseTimestamp instead


* `getHour(uint timestamp) constant returns (uint16)`

Given a unix timestamp, returns the `DateTime.hour` value for the timestamp.


* `getMinute(uint timestamp) constant returns (uint16)`

Given a unix timestamp, returns the `DateTime.minute` value for the timestamp.


* `getSecond(uint timestamp) constant returns (uint16)`

Given a unix timestamp, returns the `DateTime.second` value for the timestamp.


* `getWeekday(uint timestamp) constant returns (uint8)`

Given a unix timestamp, returns the `DateTime.weekday` value for the timestamp.


* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute, uint8 second) constant returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute) constant returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour) constant returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day) constant returns (uint timestamp)`

Returns the unix timestamp representation for the given date and time values.
