<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on February 22, 2014 at 5:25:43 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>packageName</property> <value>'CS474'</value>
</component-property>

<name-space>
<name>MyTree</name>
<environment>Smalltalk</environment>
<private>false</private>
<imports>
			private Smalltalk.*
			</imports>
<category>BinaryTree</category>
<attributes>
<package>CS474</package>
</attributes>
</name-space>

<comment>
<name-space-id>MyTree</name-space-id>
<body>name:         PraveenKumar Elankovan
</comment>

<class>
<name>BTreeEditor</name>
<environment>MyTree</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>output input myTree1 myTree2 temp myTree3 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>BinaryTree</category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>MyTree.BTreeEditor</class-id>
<body>This the user interface for the project.
</comment>

<class>
<name>BTree</name>
<environment>MyTree</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root elementAdded elementRemoved findElement </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>BinaryTree</category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>MyTree.BTree</class-id>
<body>The BTree represent a binary search tree for the project
</comment>

<class>
<name>Node</name>
<environment>MyTree</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>value left right height </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>BinaryTree</category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>MyTree.Node</class-id>
<body>
</comment>

<methods>
<class-id>MyTree.Node class</class-id> <category>instance creation</category>

<body package="CS474" selector="new:">new: aNumber
</methods>


<methods>
<class-id>MyTree.Node</class-id> <category>comparing</category>

<body package="CS474" selector="=">= x 

<body package="CS474" selector="&gt;">&gt; x 

<body package="CS474" selector="&lt;">&lt; x 
</methods>

<methods>
<class-id>MyTree.Node</class-id> <category>accessing</category>

<body package="CS474" selector="right:">right: t

<body package="CS474" selector="value:">value: x

<body package="CS474" selector="height:">height: x

<body package="CS474" selector="left:">left: t

<body package="CS474" selector="right">right

<body package="CS474" selector="value">value

<body package="CS474" selector="add:">add: aNumber 

<body package="CS474" selector="height">height

<body package="CS474" selector="remove:">remove: aNumber 

<body package="CS474" selector="left">left
</methods>

<methods>
<class-id>MyTree.Node</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aNumber
</methods>


<methods>
<class-id>MyTree.BTreeEditor class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>aspects</category>

<body package="CS474" selector="output">output

<body package="CS474" selector="input">input
</methods>

<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>actions</category>

<body package="CS474" selector="switchSet">switchSet

<body package="CS474" selector="addNode">addNode

<body package="CS474" selector="saveSet">saveSet

<body package="CS474" selector="clearSet">clearSet

<body package="CS474" selector="union">union

<body package="CS474" selector="intersection">intersection

<body package="CS474" selector="deleteNode">deleteNode

<body package="CS474" selector="printTree">printTree

<body package="CS474" selector="transform">transform
</methods>

<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>MyTree.BTree class</class-id> <category>testing</category>

<body package="CS474" selector="addNode">addNode
</methods>

<methods>
<class-id>MyTree.BTree class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>MyTree.BTree</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>MyTree.BTree</class-id> <category>accessing</category>

<body package="CS474" selector="find:">find: aNumber 

<body package="CS474" selector="elementRemoved">elementRemoved

<body package="CS474" selector="root:">root: anObject

<body package="CS474" selector="root">root

<body package="CS474" selector="printTree">printTree

<body package="CS474" selector="findElement:">findElement:aString

<body package="CS474" selector="finMin">finMin

<body package="CS474" selector="findElement">findElement

<body package="CS474" selector="remove:">remove: aNumber 

<body package="CS474" selector="finMax">finMax

<body package="CS474" selector="elementAdded:">elementAdded:aString

<body package="CS474" selector="elementAdded">elementAdded

<body package="CS474" selector="makeEmpty">makeEmpty

<body package="CS474" selector="isEmpty">isEmpty

<body package="CS474" selector="elementRemoved:">elementRemoved: aString

<body package="CS474" selector="add:">add: aNumber 
</methods>

<methods>
<class-id>MyTree.BTree</class-id> <category>private</category>

<body package="CS474" selector="add:at:">add: aNumber at: aNode 

<body package="CS474" selector="valueAt:">valueAt: t 

<body package="CS474" selector="findMax:">findMax: t 

<body package="CS474" selector="find:at:">find: aNumber at: aNode 

<body package="CS474" selector="findMin:">findMin: aNode

<body package="CS474" selector="printTree:">printTree: aNode 

<body package="CS474" selector="remove:at:">remove: aNumber at: aNode 
</methods>



</st-source>