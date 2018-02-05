/*
   Lottery api 

   This contract keeps in storage a reference
   to the lottery api 
*/


pragma solidity ^0.4.18;
import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";

contract DieselPrice is usingOraclize {
    
    uint public DieselPriceUSD;

    event newOraclizeQuery(string description);
    event newDieselPrice(string price);

    function DieselPrice() {
        // update(); // first check at contract creation
        update_lottery();
    }

    function __callback(bytes32 myid, string result) {
        if (msg.sender != oraclize_cbAddress()) throw;
        newDieselPrice(result);
        DieselPriceUSD = parseInt(result, 2); // let's save it as $ cents
        // do something with the USD Diesel price
    }
    
    function update_lottery() payable {
        newOraclizeQuery("Oraclize query was sent, standing by for the answer..");
        oraclize_query("URL", "json(http://f.apiplus.net/gd11x5.json).data.0.expect");
    }
    
}


