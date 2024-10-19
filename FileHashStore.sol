pragma solidity ^0.8.0;

contract FileHashStore {

    struct FileHashData {
        bytes32 hash;    // SHA256 hash of the file
        uint256 timestamp; // Timestamp when the hash was stored
    }

    // Mapping from XOR name to FileHashData
    mapping(string => FileHashData) private fileHashData;

    // Function to store the XOR name, SHA256 hash, and timestamp
    function setFileHashData(string memory fileXORname, bytes32 fileHash) public {
        fileHashData[fileXORname] = FileHashData({
            hash: fileHash,
            timestamp: block.timestamp
        });
    }

    // Function to retrieve the hash data for a given file XOR name
    function getFileHashData(string memory fileXORname) public view returns (bytes32, uint256) {
        FileHashData memory hashData = fileHashData[fileXORname];
        return (hashData.hash, hashData.timestamp);
    }
}
