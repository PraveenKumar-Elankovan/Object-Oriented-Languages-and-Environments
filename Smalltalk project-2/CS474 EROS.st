<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on March 20, 2014 at 6:25:48 PM</time-stamp>


<component-created>
<name>CS474 EROS</name> <type>package</type>
</component-created><!-- Package CS474 EROS* -->


<component-created>
<name>CS474 EROS</name> <type>package</type>
</component-created>

<class>
<name>Food</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>listName categoryList items1 items2 items3 items4 items5 calories1 calories2 calories3 calories4 calories5 price1 price2 price3 price4 price5 ingredients1 ingredients2 ingredients3 ingredients4 ingredients5 foodName price calories ingredients sideDish1 description1 sidedish descriptionn descriptionIns i suggestionn saveCollection retrieveCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474 EROS</package>
</attributes>
</class>

<class>
<name>EROS</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>listNames flag myList foodCategory foodItemList foodName ingredients calories price listname foodCategoryChoice sideDish description suggestion </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474 EROS</package>
</attributes>
</class>

<methods>
<class-id>Food class</class-id> <category>instance creation</category>

<body package="CS474 EROS" selector="new">new
</methods>


<methods>
<class-id>Food</class-id> <category>aspects</category>

<body package="CS474 EROS" selector="makenil">makenil

<body package="CS474 EROS" selector="savelist:">savelist:filename

<body package="CS474 EROS" selector="new">new

<body package="CS474 EROS" selector="suggestLightMeal:with:">suggestLightMeal:calory with:pricee

<body package="CS474 EROS" selector="displayAll:with:">displayAll:itemName with:foodCategory

<body package="CS474 EROS" selector="saveObject">saveObject

<body package="CS474 EROS" selector="removeItem:with:">removeItem:itemName with:category

<body package="CS474 EROS" selector="retrieveObject">retrieveObject

<body package="CS474 EROS" selector="suggestFullMeal:with:">suggestFullMeal:calory with:pricee

<body package="CS474 EROS" selector="checkItemName:with:">checkItemName:itemName with:foodCategory

<body package="CS474 EROS" selector="setItem:with:with:with:with:with:with:">setItem:itemName with:category with:price with:calory with:ingredientsList with:sideDish with:description

<body package="CS474 EROS" selector="displayItemList:">displayItemList:foodCategory

<body package="CS474 EROS" selector="retrievelist:">retrievelist: fileName
</methods>

<methods>
<class-id>Food</class-id> <category>accessing</category>

<body package="CS474 EROS" selector="price">price

<body package="CS474 EROS" selector="sidedish">sidedish

<body package="CS474 EROS" selector="suggestionn">suggestionn

<body package="CS474 EROS" selector="i">i

<body package="CS474 EROS" selector="ingredients">ingredients

<body package="CS474 EROS" selector="descriptionn">descriptionn

<body package="CS474 EROS" selector="calories">calories

<body package="CS474 EROS" selector="descriptionIns">descriptionIns

<body package="CS474 EROS" selector="listName:">listName:value

<body package="CS474 EROS" selector="listName">listName

<body package="CS474 EROS" selector="foodName">foodName
</methods>

<methods>
<class-id>Food</class-id> <category>initialize-release</category>

<body package="CS474 EROS" selector="initialize">initialize
</methods>


<methods>
<class-id>EROS class</class-id> <category>interface specs</category>

<body package="CS474 EROS" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>EROS</class-id> <category>aspects</category>

<body package="CS474 EROS" selector="disableAspectsDesserts">disableAspectsDesserts

<body package="CS474 EROS" selector="foodName">foodName

<body package="CS474 EROS" selector="foodCategory">foodCategory

<body package="CS474 EROS" selector="description">description

<body package="CS474 EROS" selector="enableAllAspects">enableAllAspects

<body package="CS474 EROS" selector="foodItemList">foodItemList

<body package="CS474 EROS" selector="suggestion">suggestion

<body package="CS474 EROS" selector="ingredients">ingredients

<body package="CS474 EROS" selector="disableAspectsMainDishes">disableAspectsMainDishes

<body package="CS474 EROS" selector="newSelection">newSelection

<body package="CS474 EROS" selector="foodCategoryChoice">foodCategoryChoice

<body package="CS474 EROS" selector="disableAspectsAppetizers">disableAspectsAppetizers

<body package="CS474 EROS" selector="price">price

<body package="CS474 EROS" selector="disableAspectsLongDrink">disableAspectsLongDrink

<body package="CS474 EROS" selector="calories">calories

<body package="CS474 EROS" selector="disableAspectsSodaSelection">disableAspectsSodaSelection

<body package="CS474 EROS" selector="sideDish">sideDish

<body package="CS474 EROS" selector="updateItemList">updateItemList
</methods>

<methods>
<class-id>EROS</class-id> <category>actions</category>

<body package="CS474 EROS" selector="suggestFullMeal">suggestFullMeal

<body package="CS474 EROS" selector="retrieveList">retrieveList

<body package="CS474 EROS" selector="createList">createList

<body package="CS474 EROS" selector="Clear_Entries">Clear_Entries

<body package="CS474 EROS" selector="removeItem">removeItem

<body package="CS474 EROS" selector="saveList">saveList

<body package="CS474 EROS" selector="suggestLightMeal">suggestLightMeal

<body package="CS474 EROS" selector="addItem">addItem

<body package="CS474 EROS" selector="quit">quit
</methods>

<methods>
<class-id>EROS</class-id> <category>initialize-release</category>

<body package="CS474 EROS" selector="initialize">initialize
</methods>



</st-source>