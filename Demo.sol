pragma solidity 0.8.0;

contract BloodBank{
     
     
        address public owner;
        
        enum BloodGroup{
              A_positive, //0
              A_negative, //1
              B_positive, //2
              B_negative,  //3
              AB_positive, //4
              AB_negative, //5
              O_positive,  //6
              O_negative   //7
              }
              
              
        struct  Bloodbank{
            address add;
            string  name;
            string  city;
            string  email;
            uint256 contact;
            uint8 isBank;
            uint8 isadmin;
            mapping(uint8 => uint256)  stock;
        }
        
        
        // mapping(uint8 => uint256) public stock;
        mapping(address=> uint256) public bankId;
        mapping(uint256=> Bloodbank) public banks;
        
        
       // mapping(address=> uint256) public donorId;
       // mapping(uint256=> Donor) public donors;
        
        
        uint256 public counterB;
        uint256 public counterD;
        
        
        
        
        
        constructor(){
            owner = msg.sender;
        }
        
         function NewBank(     //Add new Bloodbank
            address _add,
            string memory _name,
            string memory _city, 
            string memory _email,
            uint256 _contact
            )  public {
            counterB++;
            Bloodbank memory bank;
            bankId[_add] = counterB;
            bank.add = _add;
            bank.name = _name;
            bank.city = _city;
            bank.email = _email;
            bank.contact = _contact;
            bank.isBank = 1;
            bank.isadmin = 1;
            banks[counterB] = bank;
        }
        
         
        
}