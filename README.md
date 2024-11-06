# MiniSocial Smart Contract

A simple decentralized social media smart contract built on Ethereum that allows users to publish and retrieve posts.

## Overview

MiniSocial is a basic implementation of a decentralized social platform where users can:
- Publish text messages as posts
- View posts by index
- Get the total number of posts in the system

Each post contains the message content and the author's Ethereum address.

## Contract Details

### Data Structure

The contract uses a `Post` struct with the following properties:
- `message`: The content of the post (string)
- `author`: The Ethereum address of the post creator (address)

All posts are stored in a dynamic array called `posts`.

### Functions

#### `publishPost(string memory _message)`
Allows users to publish a new post to the platform.
- Parameters:
  - `_message`: The content of the post
- Behavior:
  - Creates a new Post struct with the provided message
  - Sets the author as the sender's address (msg.sender)
  - Adds the post to the posts array

#### `getPost(uint index)`
Retrieves a specific post by its index.
- Parameters:
  - `index`: The position of the post in the array
- Returns:
  - `string`: The message content
  - `address`: The author's address
- Requirements:
  - The index must be less than the total number of posts
  - Throws "Index out of bounds" error if the index is invalid

#### `getTotalPosts()`
Returns the total number of posts in the system.
- Returns:
  - `uint`: The length of the posts array

## Usage Example

```solidity
// Deploy the contract
MiniSocial socialContract = new MiniSocial();

// Publish a post
socialContract.publishPost("Hello, Web3!");

// Get the total number of posts
uint totalPosts = socialContract.getTotalPosts(); // Returns 1

// Retrieve a post
(string memory message, address author) = socialContract.getPost(0);
// Returns ("Hello, Web3!", sender's address)
```

## Technical Requirements

- Solidity Version: >=0.7.0 <0.9.0
- License: GPL-3.0

## Security Considerations

- All posts are public and visible to everyone on the blockchain
- Posts cannot be modified or deleted once published
- The contract does not implement access control - anyone can publish posts
- Message content is stored on-chain, which can be expensive for long messages

## Future Improvements

Potential enhancements that could be added:
1. Add post deletion functionality
2. Implement access control mechanisms
3. Add post editing capabilities
4. Add commenting functionality
5. Implement content moderation features
6. Add user profiles and following system
7. Add support for media content

## License

This project is licensed under the GNU General Public License v3.0 - see the [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) for details.
