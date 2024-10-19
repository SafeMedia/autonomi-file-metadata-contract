pragma solidity ^0.8.0;

contract FileMetadataStore {
    // Mapping from file XORname (key) to metadata XORname (value)
    mapping(string => string) private fileToMetadata;

    // Mapping from file XORname to submission timestamp
    mapping(string => uint256) private fileToTimestamp;

    // Function to store the XORname of a file and its metadata
    function setFileMetadata(string memory fileXORname, string memory metadataXORname) public {
        fileToMetadata[fileXORname] = metadataXORname;
        fileToTimestamp[fileXORname] = block.timestamp;
    }

    // Function to retrieve the metadata XORname given the file XORname
    function getMetadata(string memory fileXORname) public view returns (string memory) {
        return fileToMetadata[fileXORname];
    }

    // Function to retrieve the timestamp of when the metadata was set
    function getTimestamp(string memory fileXORname) public view returns (uint256) {
        return fileToTimestamp[fileXORname];
    }
}
