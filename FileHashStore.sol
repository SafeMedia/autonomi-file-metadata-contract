pragma solidity ^0.8.0;

contract FileHashStore {

    struct FileHashData {
        bytes32 hash;    // SHA256 hash of the file
        uint256 timestamp; // Timestamp when the hash was stored
    }

    // Mapping from hash to FileHashData
    mapping(bytes32 => FileHashData) private fileHashData;

    // Function to store the SHA256 hash, and timestamp
    function setFileHashData(bytes32 fileHash) public {
        fileHashData[fileHash] = FileHashData({
            hash: fileHash,
            timestamp: block.timestamp
        });
    }

    // Function to retrieve the hash data for a given file XOR name
    function getFileHashData(bytes32 memory fileHash) public view returns (bytes32, uint256) {
        FileHashData memory hashData = fileHashData[fileHash];
        return (hashData.hash, hashData.timestamp);
    }
}
 