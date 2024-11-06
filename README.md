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

=
