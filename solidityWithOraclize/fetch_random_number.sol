/*
   Random number api 

   This contract keeps in storage a reference
   to the random number api 
*/


pragma solidity ^0.4.18;
import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";

contract RandomNumber is usingOraclize {

    event newOraclizeQuery(string description);
    event randomNumberIs(string price);

    function RandomNumber() {
        // update(); // first check at contract creation
        update_lottery();
    }

    function __callback(bytes32 myid, string result) {
        if (msg.sender != oraclize_cbAddress()) throw;
        randomNumberIs(result);
    }
    
    function update_lottery() payable {
        newOraclizeQuery("Oraclize query was sent, standing by for the answer..");
        oraclize_query("URL", "json(https://vxalhqharn.localtunnel.me/hello).number");
    }
    
}

