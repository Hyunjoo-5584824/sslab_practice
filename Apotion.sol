pragma solidity ^0.5.16; // version     

contract Adoption{

    // 이더리움 전송 및 수신 주소
    address[16] public adopters;

    //Adoption a pet
    function adopt(uint petId) public returns (uint){
        // 배열 범위내에 있는지 확인
        require(petId >= 0 && petId <= 15);
        // 있다면 호출 주소 배열에 추가
        adopters[petId] = msg.sender;
        // 반환
        return petId;
    }

    // Retrieving the adopters
    // view -> 함수 상태를 수정하지 않겠다. 
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}