## <b>Functions</b>

<code>
function buy(uint price) public returns (uint) { //... }
</code>

Can be <b> public private internal external </b>

### Function modifiers

Can be used to change the behavior of functions. Work by checking a condition before the function executes.

<li> <b> pure </b> describe functions that don't allow modifications or access of state
<li> <b> view </b> describe functions that don't allow modifications of state
<li> <b> payable </b> describe functions that can receive Ether

## Events

Describe actions that are taken in the contract. Have parameters that needer to be specified when the event is called.

To call it you need to use the keyword <b> emit </b>

<code>
contract Marketplace {
    event PurchasedItem(address buyer, uint price);

function buy() public {
    emit PurchasedItem(msg.sender, msg.value);
}

}
</code>

## <b>Variables</b>

<li> <b>public</b> can be accessed from other contracts.
<li> <b>internal</b> only accessed internally from the current contract
<li> <b> private </b> only visible for the contract it's defined in

---

## Variable Types

---

<b> integer boolean string literal address enum</b>

<code>
<b>Comparisions</b> <= < == != >= >

<b> Bit operators </b> & | ^ ~

<b> Arithmetic operators </b> + - * / % **
</code>

---

## String literals

<code>
<li>\ </li> escapes a new line
<li>\n </li> new line
<li>\r </li> carriage return
<li>\t </li> tab
</code>

---

## Address

<b>address</b> 20-byte value that represents an Ethereum user accout

<b>address payable</b> you can send Ether to, and it contains the additionals members <b> transfer send </b>

---

## Enums

<b>enums</b> to create a user-defined type

<code>
enum Status {
    pending,
    shipped,
    delivered
}

Status public status;

constructor () public {
    status = Status.pending;
}

</code>

---

# Reference types

**structs arrays mappings**

## Data location

- **memory**
  - the location where function arguments are stored
  - has a lifetime limited to the lifetime of an external function call
- **storage**
  - the location where state variables are stored
  - has a lifetime limited to the contract lifetime
- **calldata**
  - the locationi where function arguments are stored
  - this location is required for parameters of external functions, but can also be used for other variables
  - has a lifetime limited to the lifetime of an external function calls
  
### Arrays

  <code>
    uint[] itemIds;
    uint[3] prices = [1, 2, 3];
    uint[] prices = [1, 2, 3]
  </code>

#### Members

<b>length push() pop</b>

### Structs

Are custom types that a user can define to represent real-world objects

### Mapping types

