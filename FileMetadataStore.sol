pragma solidity ^0.8.0;

contract FileMetadataStore {
    // Mapping from file XORname (key) to metadata XORname (value)
    mapping(string => string) private fileToMetadata;

    // Function to store the XORname of a file and its metadata
    function setFileMetadata(string memory fileXORname, string memory metadataXORname) public {
        fileToMetadata[fileXORname] = metadataXORname;
    }

    // Function to retrieve the metadata XORname given the file XORname
    function getMetadata(string memory fileXORname) public view returns (string memory) {
        return fileToMetadata[fileXORname];
    }
}