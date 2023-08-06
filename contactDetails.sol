pragma solidity ^0.8.19;
contract contactDetails {

    struct details {
        string hash;
        string timeStamp;
        string jsonSting;
    }

    mapping(string => details) uuid;

    ///Create/Update a new record with the respective UUID
    function set(string memory  ipUuid, string memory inHash, string memory inTimeStamp, string memory inJsonString) public {
        uuid[ipUuid].hash = inHash;
        uuid[ipUuid].timeStamp = inTimeStamp;
        uuid[ipUuid].jsonSting = inJsonString;  
    }

    ///Retrive record for given UUID
    function get(string memory  ipUuid) view public returns (string memory,string memory,string memory) {
        return (uuid[ipUuid].hash, uuid[ipUuid].timeStamp, uuid[ipUuid].jsonSting);
    }

}