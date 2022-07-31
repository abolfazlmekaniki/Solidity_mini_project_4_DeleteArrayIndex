// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Delete_{

        uint[] myArray;
        uint[] newMyArray;

        function setArray( uint newValue ) public {

            myArray.push( newValue );   // add newValue at the end of Array.
        }

        function getArray() public view returns( uint[] memory ) {

            return myArray;  // return and show whole of Array.
        }


        function deleteArray( uint index ) public {

            
            for( uint i=0 ; i<myArray.length ; i++ ) {

                if( i != index ){

                    newMyArray.push( myArray[i] );  // delete the value of index.

                }


                else{  

                    continue;

                }

            }

            myArray=newMyArray;

            while( newMyArray.length != 0 ) {

                newMyArray.pop();   // reset the newMyArray value.

            }

        }
        
}
        