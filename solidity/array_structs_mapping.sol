byes32[] itemNames; // Create a dynamic array
itemNames.push(bytes32("computer")); // adds "computer" to the array
itemNames.length; // 1

contract Items {
    uint256 item_id = 0;
    mapping(uint256 => itemsSchema) public items;

    struct itemsSchema {
        uint256 _id;
        uint256 _price;
        string _name;
        string _description;
    }

    function listItem(uint 256 memory _price, string memory _name) public
    item_id += 1;
    item[vehicle_id] = itemsSchema(item_id, _price, _name);

}