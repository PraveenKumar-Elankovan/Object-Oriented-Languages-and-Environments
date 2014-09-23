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
<body>name:         PraveenKumar Elankovanproject:        CS 474 project 1-SmallTalkfile name:     Elankovan.stDate:           Feb 21 2014</body>
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
<body>This the user interface for the project.Instance Variables:	input	&lt;ValueModel&gt;	accept a list of numbers for adding to the tree or deleting from the tree	myTree	&lt;BTree&gt;	a binary search tree	output	&lt;ValueModel&gt;	show the result of each operations: 		add node, delete node, add all nodes' total, print in-order, print pre-order, and print post-order</body>
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
<body>The BTree represent a binary search tree for the projectInstance Variables:	root	&lt;Object&gt;	the root node of the tree	addStatus 		the status of add node operation	removeStatus    the status of delete node operation</body>
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
<body></body>
</comment>

<methods>
<class-id>MyTree.Node class</class-id> <category>instance creation</category>

<body package="CS474" selector="new:">new: aNumber	"Answer a newly created and initialized instance."	^super new initialize: aNumber</body>
</methods>


<methods>
<class-id>MyTree.Node</class-id> <category>comparing</category>

<body package="CS474" selector="=">= x 	^value = x</body>

<body package="CS474" selector="&gt;">&gt; x 	^value &gt; x</body>

<body package="CS474" selector="&lt;">&lt; x 	^value &lt; x</body>
</methods>

<methods>
<class-id>MyTree.Node</class-id> <category>accessing</category>

<body package="CS474" selector="right:">right: t	right := t</body>

<body package="CS474" selector="value:">value: x	value := x</body>

<body package="CS474" selector="height:">height: x^height := x.</body>

<body package="CS474" selector="left:">left: t	left := t</body>

<body package="CS474" selector="right">right	^right</body>

<body package="CS474" selector="value">value	^value</body>

<body package="CS474" selector="add:">add: aNumber 	value &gt; aNumber 		ifTrue: 			[left isNil 				ifTrue: [^left := Node new: aNumber]				ifFalse: [^left add: aNumber]].	value &lt; aNumber 		ifTrue: 			[right isNil 				ifTrue: [^right := Node new: aNumber]				ifFalse: [^right add: aNumber]].	^nil</body>

<body package="CS474" selector="height">height	^height</body>

<body package="CS474" selector="remove:">remove: aNumber 	value &gt; aNumber 		ifTrue: [left isNil ifTrue: [^nil] ifFalse: [^left remove: aNumber]].	value &lt; aNumber 		ifTrue: [right isNil ifTrue: [^nil] ifFalse: [^right remove: aNumber]].	^nil</body>

<body package="CS474" selector="left">left	^left</body>
</methods>

<methods>
<class-id>MyTree.Node</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aNumber	"Initialize a newly created instance. This method must answer the receiver."	value := aNumber.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>MyTree.BTreeEditor class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'BST' 			#bounds: #(#{Graphics.Rectangle} 398 257 969 472 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 21 19 ) 					#name: #inputLabel 					#label: 'Input' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 16 100 ) 					#name: #outputLabel 					#label: 'Output' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 59 20 545 45 ) 					#name: #InputField 					#model: #input ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 61 100 547 125 ) 					#name: #outputField 					#model: #output 					#isReadOnly: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 139 56 257 87 ) 					#name: #addNodeButton 					#model: #addNode 					#label: 'Add Element(s) to S1' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 323 56 441 87 ) 					#name: #deleteButton 					#model: #deleteNode 					#label: 'Delete Element from S1' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 172 150 290 181 ) 					#name: #printTreeButton 					#model: #printTree 					#label: 'Display Sets S1 and S2' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 64 150 160 182 ) 					#name: #ActionButton1 					#model: #clearSet 					#label: 'Clear Set S1' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 309 150 409 180 ) 					#name: #ActionButton2 					#model: #saveSet 					#label: 'Save S1 to S2' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 427 149 524 177 ) 					#name: #ActionButton3 					#model: #switchSet 					#label: 'Switch Sets' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 87 190 209 224 ) 					#name: #ActionButton4 					#model: #union 					#label: 'Union of S1 and S2' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 231 192 366 223 ) 					#name: #ActionButton5 					#model: #intersection 					#label: 'Intersection of S1 and S2' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 382 194 498 225 ) 					#name: #ActionButton6 					#model: #transform 					#label: 'Transform' 					#defaultable: true ) ) ) )</body>
</methods>


<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>aspects</category>

<body package="CS474" selector="output">output	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^output isNil		ifTrue:			[output := String new asValue]		ifFalse:			[output]</body>

<body package="CS474" selector="input">input	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input isNil		ifTrue:			[input := String new asValue]		ifFalse:			[input]</body>
</methods>

<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>actions</category>

<body package="CS474" selector="switchSet">switchSet	"This stub method was generated by UIDefiner"	"Usual swap algorithm"	temp:=myTree1 dcopy.	myTree1:=myTree2 dcopy.	myTree2:=temp dcopy.	output value:'S1 and S2 are swapped'.	^self</body>

<body package="CS474" selector="addNode">addNode	"For multiple additions to S1"	"Input expected to be inputField1 inputField2 inputField3.."	| inputStream aNumber |	myTree1 elementAdded: nil.	"get the inputField"	inputStream := input value readStream.	(inputStream collection='') ifTrue:[output value:'Enter an element to add before clicking on Add button'.								^self.].	"Get a token as a number and add it to the binary search tree.Continue doing it till reading stream gets completed"	[inputStream atEnd] whileFalse: 			[aNumber := inputStream upTo: Character space.			myTree1 add: aNumber asNumber].	"set inputField empty"	input value: ''.	"Letting the user know number are added to the tree"	myTree1 elementAdded isNil		ifTrue: [output value: 'Number already in the tree.BST cannot contain duplicates']		ifFalse: [output value: 'Elements added to S1: ' , myTree1 elementAdded]</body>

<body package="CS474" selector="saveSet">saveSet	"This stub method was generated by UIDefiner"	"Since changes in S1 should not affect S2,dcopy is used"	myTree2:=myTree1 dcopy.	output value:'S1 saved to S2'.	^self</body>

<body package="CS474" selector="clearSet">clearSet	"This stub method was generated by UIDefiner"	"Clear the S1"	myTree1 makeEmpty. 	output value:'S1 cleared'.	^self</body>

<body package="CS474" selector="union">union	"For multiple additions to S1"	"Input expected to be inputField1 inputField2 inputField3.."	|result aBlock inputStream aNumber |	myTree1 elementAdded: nil.	"get the inputField"	inputStream := myTree2 printTree readStream.	"Get a token as a number and add it to the binary search tree.Continue doing it till reading stream gets completed"	aBlock:=[aNumber := inputStream upTo: Character space.].	[inputStream atEnd] whileFalse: 			[aBlock value.			aNumber := inputStream upTo: Character space.			myTree1 findElement:nil.			result:=myTree1 find: aNumber asNumber.			result isNil ifTrue:[myTree1 add:aNumber asNumber].].	"set inputField empty"	input value: ''.	"Letting the user know number are added to the tree"	myTree1 elementAdded isNil		ifTrue: [output value: 'No change to S1. S1:',myTree1 printTree]		ifFalse: [output value: 'Elements added to S1: ' , myTree1 elementAdded ]</body>

<body package="CS474" selector="intersection">intersection	"For multiple additions to S1"	"Input expected to be inputField1 inputField2 inputField3.."	|result aBlock inputStream aNumber |	myTree3 elementAdded: nil.	"get the inputField"	inputStream := myTree2 printTree readStream.	"Get a token as a number and add it to the binary search tree.Continue doing it till reading stream gets completed"	aBlock:=[aNumber := inputStream upTo: Character space.].	[inputStream atEnd] whileFalse: 			[aBlock value.			aNumber := inputStream upTo: Character space.			myTree1 findElement:nil.			result:=myTree1 find: aNumber asNumber.			(result isNil not) ifTrue:[myTree3 add:aNumber asNumber].].	"set inputField empty"	input value: ''.	myTree1 makeEmpty.	myTree1:=myTree3 dcopy.	myTree3 makeEmpty.	"Letting the user know number are added to the tree"	myTree1 root isNil	ifTrue:[output value:'There are no intersecting elements between S1 and S2. S1 is a Null set.']	ifFalse:[output value: 'New S1: ' , myTree1 printTree].</body>

<body package="CS474" selector="deleteNode">deleteNode	"delete one or more numbers from the tree"	"Input expected to be inputField1 inputField2.."	| inputStream aNumber |	myTree1 elementRemoved: nil.	inputStream := input value readStream.	(inputStream collection='') ifTrue:[output value:'Enter an element to remove before clicking on Delete button'.								^self.].	[inputStream atEnd]	whileFalse: [		aNumber := inputStream upTo: Character space.		myTree1 remove: aNumber asNumber.	].	input value: ''.	myTree1 elementRemoved isNil		ifTrue: [ output value: 'Number entered is not present in the tree.' ]		ifFalse: [ output value: 'Elements deleted ' ].</body>

<body package="CS474" selector="printTree">printTree	"This stub method was generated by UIDefiner"	"S1 is printed in In-order form followed by S2's In-order form"	|space|	space := String with: Character space.	output value: 'S1:', myTree1 printTree,space,space,space,space,space,space,space,space,space,space,space,space,space,space,'S2:',myTree2 printTree."To improve readability"</body>

<body package="CS474" selector="transform">transform	"For multiple additions to S1"	"Input expected to be a block"	|newElement aBlock1 aBlock2 inputStream1 inputStream2 aNumber |	myTree3 makeEmpty.	myTree1 root isNil ifTrue:[output value:'Operation cannot be performed on empty tree'.								^self.].	inputStream2:=String new.	inputStream2:=input value.	(inputStream2='') ifTrue:[output value:'Enter a block of code to transform'.								^self.].	aBlock2:=BlockClosure readFromString:inputStream2.	"get the inputField"	inputStream1 := myTree1 printTree readStream.	"Get a token as a number and perfrom Block operation on it add it to the binary search tree.Continue doing it till reading stream gets completed"	aBlock1:=[aNumber := inputStream1 upTo: Character space.].	[inputStream1 atEnd] whileFalse: 			[aBlock1 value.			aNumber := inputStream1 upTo: Character space.			newElement:=aBlock2 value:aNumber asNumber.			myTree3 add:newElement asNumber.].	"set inputField empty"	input value: ''.	myTree1 makeEmpty.	myTree1:=myTree3 dcopy.	output value:'S1 is transformed as per the input block. Updated S1 is S1:',myTree1 printTree printString.</body>
</methods>

<methods>
<class-id>MyTree.BTreeEditor</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	myTree1 := BTree new.	myTree2:=BTree new.	myTree3:=BTree new.	temp:=BTree new.</body>
</methods>


<methods>
<class-id>MyTree.BTree class</class-id> <category>testing</category>

<body package="CS474" selector="addNode">addNode	| t |	t := BTree new.	t add: 30.	t add: 50.	t add: 70.	t add: 90.	t add: 20.	t add: 60.	Transcript show: t printTreeInOrder.	Transcript show: t printTreePreOrder.	Transcript show: t printTreePostOrder.</body>
</methods>

<methods>
<class-id>MyTree.BTree class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>MyTree.BTree</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	" *** Edit the following to properly initialize instance variables ***"	root := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>MyTree.BTree</class-id> <category>accessing</category>

<body package="CS474" selector="find:">find: aNumber 	^self valueAt: (self find: aNumber at: root)</body>

<body package="CS474" selector="elementRemoved">elementRemoved	^elementRemoved</body>

<body package="CS474" selector="root:">root: anObject	root := anObject</body>

<body package="CS474" selector="root">root	^root</body>

<body package="CS474" selector="printTree">printTree	^self printTree: root</body>

<body package="CS474" selector="findElement:">findElement:aString	findElement:= aString</body>

<body package="CS474" selector="finMin">finMin	^self findMin: root</body>

<body package="CS474" selector="findElement">findElement	^findElement</body>

<body package="CS474" selector="remove:">remove: aNumber 	"remove a node"	root := self remove: aNumber at: root</body>

<body package="CS474" selector="finMax">finMax	^self valueAt: (self findMax: root)</body>

<body package="CS474" selector="elementAdded:">elementAdded:aString	elementAdded:= aString</body>

<body package="CS474" selector="elementAdded">elementAdded	^elementAdded</body>

<body package="CS474" selector="makeEmpty">makeEmpty	root := nil</body>

<body package="CS474" selector="isEmpty">isEmpty	^root isNil</body>

<body package="CS474" selector="elementRemoved:">elementRemoved: aString	elementRemoved := aString</body>

<body package="CS474" selector="add:">add: aNumber 	root := self add: aNumber at: root</body>
</methods>

<methods>
<class-id>MyTree.BTree</class-id> <category>private</category>

<body package="CS474" selector="add:at:">add: aNumber at: aNode 	aNode isNil ifTrue: [			"Creation of Node"			|newNode|			newNode := Node new: aNumber.			elementAdded isNil 				ifTrue: [ elementAdded := newNode value printString ]				ifFalse: [ elementAdded := elementAdded, ' ', newNode value printString ].			^newNode ]		ifFalse: [			"Passing control to the left of root"					aNode value &gt; aNumber 				ifTrue: 					["Passing control to the left of root"					aNode left: (self add: aNumber at: aNode left ).					^aNode ].			aNode value &lt; aNumber 				ifTrue: 					["Passing control to the right of root"						aNode right: (self add: aNumber at: aNode right ) .					^aNode ].			^aNode ]</body>

<body package="CS474" selector="valueAt:">valueAt: t 	t isNil ifTrue: [^nil] ifFalse: [^t value]</body>

<body package="CS474" selector="findMax:">findMax: t 	| tmp |	tmp := t.	tmp isNil ifTrue: [^nil].	[tmp right isNil] whileFalse: [tmp := tmp right].	^tmp</body>

<body package="CS474" selector="find:at:">find: aNumber at: aNode 	| tmp |	tmp := aNode.	[tmp isNil not] whileTrue: 			[tmp &gt; aNumber ifTrue: [tmp := tmp left.].			(tmp isNil not)ifTrue:[tmp &lt; aNumber ifTrue: [tmp := tmp right.].].			(tmp isNil not)ifTrue:[tmp = aNumber ifTrue: [^tmp].].].	^nil</body>

<body package="CS474" selector="findMin:">findMin: aNode	aNode isNil ifTrue: [^nil].	aNode left isNil ifTrue: [ ^aNode ].	^ self findMin: aNode left.</body>

<body package="CS474" selector="printTree:">printTree: aNode 	"In-Order traversal"	| left middle right space |	aNode isNil 		ifTrue: [^'']		ifFalse: 			[left := self printTree: aNode left.			middle := aNode value printString.			right := self printTree: aNode right.			space := String with: Character space."To improve readability"			^left, space, middle, space, right ]</body>

<body package="CS474" selector="remove:at:">remove: aNumber at: aNode 	"Empty tree"	aNode isNil ifTrue: [^nil].	"Pass control to left tree"	aNode value &gt; aNumber ifTrue: [		aNode left: (self remove: aNumber at: aNode left ).		^aNode ].	"Pass control to right tree"	aNode value &lt; aNumber ifTrue: [		aNode right: (self remove: aNumber at: aNode right ).		^aNode ].		"To let the user know the node is deleted,deleted node is stored to a string removestatus."		self elementRemoved isNil		ifTrue: [ self elementRemoved: aNumber printString ]		ifFalse: [ self elementRemoved: elementRemoved, '  ', aNumber printString ].	"Case of both left and right available"	( aNode left isNil not ) &amp; ( aNode right isNil not ) ifTrue: [		aNode value: ( self findMin: aNode right ) value.		aNode right: ( self remove: aNode value at: aNode right ).		^aNode ].	"No right child"	aNode left isNil ifFalse: [ ^aNode left ].	"No Left child"	aNode right isNil ifFalse: [ ^aNode right ].	^nil.</body>
</methods>



</st-source>
