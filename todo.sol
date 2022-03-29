// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Tasks {
     
     //Structure for Todo

     struct Todo {
         bool done; 
         string item;
     }

     Todo[] public todos; 

     function createTodo (string memory _text) public {
         todos.push (Todo({ 
             done: false, 
             item: _text
         }));
     }

     function toogleDone (uint _index) public { 
         todos[_index].done = !todos[_index].done;
     }

    function update (uint _index, string memory _text) public { 
         todos[_index].item = _text;
     }

     function allItems () public view returns (Todo memory x) { 
         
         for (uint i =0; i < todos.length; i++) { 
             return todos[i];
         }
     }

}
