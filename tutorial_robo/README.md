## How To run?

Open terminal and go to `tutorial_robo` folder and run:
* For all tests `robot -d Results Tests`
* For spesific test `robot -d Results Tests/eBay/BasicSearch.robot`

## Xpath Types
### "starts-with"
* "starts-with" function is very helpful in finding dynamic webelements
* You can use it to match the starting value of web element witch remains static.
   
    Example: id= "session123", "session 321"
* This function can also find the element whose attribute value is static
* Format: `xpath://tagname[starts-with(@attribute, 'value')]`

    Example: `xpath://input[starts-with(@id, 'first_name')]`

### "contains"
* This function is used for finding dynamic web elements
* You can provide any partial attribute value to find the webelement
* Format: `xpath://tagname[contains(@attribute, 'value')]`

    Example: `xpath://input[contains(@name, 'email')]`

### "text()"
* "text()" method is used to find element with exact text match
* Format: `xpath://tagname[text()='Actual Text']`

    Example: `xpath://a[text()='Term of use]`

### AND & OR
* AND & or expressions can also be use in selenium XPATH expression
* Very helpful if you want to use more that two attributes to find element on webpage
* Format:
    * `xpath://tagname[@attribute='Value1' or @attribute='Value2']`
    * `xpath://tagname[@attribute='Value1' and @attribute='Value2']`
  
    Example: `xpath://input[@type='text' and @name='user['first_name']']`

### Xpath Axes methods (Parents, Child, Self)
* It represents a relationship to the context node
* It is used in locating nodes relative to that node in the tree
  * parent: Selects the parent of the context (Current) node
    
      Format: `//tagname[@attribute='Value']//parent::tagname`
  * child: Selects all children of the current node

      Format: `//tagname[@attribute='Value']//child::tagname`
  * self: Selects the current node

      Format: `//tagname[@attribute='Value']//self::tagname`

### Xpath Axes methods (descendant & descendant-or-self)
* `descendant`: It selects all of descendants (children, grandchildren, etc.) of context (current) node

    Format: `//tagname[@attribute='Value']//descendant::tagname`
* `descendant-or-self`: It selects context (current) node and all of its descendants like (children, grandchildren, etc.) 
if tagname of descendants and self are same

   Format: `//tagname[@attribute='Value']//descendant-or-self::tagname`

### Xpath Axes methods (ancestor & ancestor-or-self)
* `descendant`: It selects all of ancestor (children, grandchildren, etc.) of context (current) node

    Format: `//tagname[@attribute='Value']//ancestor::tagname`
* `descendant-or-self`: It selects context (current) node and all of its ancestor like (children, grandchildren, etc.) 
if tagname of ancestor and self are same

   Format: `//tagname[@attribute='Value']//ancestor-or-self::tagname`

### Xpath Axes methods (following, following-sibling)
* `following`: It selects all the nodes that appear after the context (current) node

   Format: `//tagname[@attribute='Value']//following::tagname`
* `following-sibling`: It selects all the nodes that have the same parent as the context (current) node and appear 
after the context (current) node

   Format: `//tagname[@attribute='Value']//following-sibling::tagname`

### Xpath Axes methods (preceding, preceding-sibling)
* `following`: It selects all the nodes that appear before the context (current) node

   Format: `//tagname[@attribute='Value']//preceding::tagname`
* `following-sibling`: It selects all the nodes that have the same parent as the context (current) node and appear 
before the context (current) node

   Format: `//tagname[@attribute='Value']//preceding-sibling::tagname`