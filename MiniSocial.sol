// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract MiniSocial{
    struct Post{
        string message;
        address author;
    }

    Post[] public posts;

    function publishPost(string memory _message) public {
        posts.push(Post(_message, msg.sender));
    }

    function getPot(uint index) public view returns (string memory, address){
        require(index < posts.length, "Index out of bounds");
        Post storage post = posts[index];
    
        return (post.message, post.author);
    }

    function getTotalPosts() public view returns (uint){
        return posts.length;
    }
}