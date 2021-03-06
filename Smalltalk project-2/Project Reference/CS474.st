<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.2 of November 3, 2003 on September 25, 2004 at 9:09:44 am</time-stamp>
<!-- Package CS474* -->


<class>
<name>CS474Example</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>currentClass subclassList instanceVariableList superName methodList </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>UIApplications-New</category>
<attributes>
<package>CS474</package>
</attributes>
</class>


<methods>
<class-id>CS474Example class</class-id> <category>interface specs</category>

<body package="CS474">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Unlabeled Canvas' 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 1152 864 ) 
			#bounds: #(#{Graphics.Rectangle} 256 178 906 448 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 14 31 133 55 ) 
					#name: #InputField1 
					#model: #currentClass ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.Rectangle} 15 72 205 227 ) 
					#name: #List1 
					#flags: 15 
					#model: #subclassList 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 18 9 ) 
					#name: #Label1 
					#label: 'Current class name' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 210 9 ) 
					#name: #Label2 
					#label: 'Superclass name' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 80 235 ) 
					#name: #Label3 
					#label: 'Subclasses' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 263 236 ) 
					#name: #Label4 
					#label: 'Instance variable names' ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.Rectangle} 228 72 418 227 ) 
					#name: #List2 
					#flags: 15 
					#model: #instanceVariableList 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.Rectangle} 165 31 341 55 ) 
					#name: #TextEditor1 
					#flags: 12 
					#model: #superName 
					#isReadOnly: true 
					#tabRequiresControl: true ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.Rectangle} 439 72 629 227 ) 
					#name: #List3 
					#flags: 15 
					#model: #methodList 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 385 31 493 55 ) 
					#name: #ActionButton1 
					#model: #followSuperclass 
					#label: 'Follow super' 
					#style: #pixelLarge 
					#defaultable: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 491 231 ) 
					#name: #Label5 
					#label: 'Instance method names' ) ) ) )</body>
</methods>


<methods>
<class-id>CS474Example</class-id> <category>aspects</category>

<body package="CS474">currentClass
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^currentClass isNil
		ifTrue:
			[currentClass := 'Object' asValue]
		ifFalse:
			[currentClass]</body>

<body package="CS474">methodList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^methodList isNil
		ifTrue:
			[methodList := SelectionInList new]
		ifFalse:
			[methodList]</body>

<body package="CS474">initialize
	"comment stating purpose of message"

	super initialize.
 	self currentClass onChangeSend: #updateList to: self.
      self subclassList selectionIndexHolder onChangeSend: #newSelection to: self.
      ^self.</body>

<body package="CS474">instanceVariableList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^instanceVariableList isNil
		ifTrue:
			[instanceVariableList := SelectionInList new]
		ifFalse:
			[instanceVariableList]</body>

<body package="CS474">superName
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^superName isNil
		ifTrue:
			[superName := String new asValue]
		ifFalse:
			[superName]</body>

<body package="CS474">subclassList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^subclassList isNil
		ifTrue:
			[subclassList := SelectionInList new]
		ifFalse:
			[subclassList]</body>
</methods>

<methods>
<class-id>CS474Example</class-id> <category>actions</category>

<body package="CS474">followSuperclass

	"This stub method was generated by UIDefiner"

	| cname |
      cname := self superName value.
	(currentClass value = 'Object')
					ifTrue: [superName value: 'No superclass, twit!']
					ifFalse: [currentClass value: cname.].
	^self.</body>
</methods>

<methods>
<class-id>CS474Example</class-id> <category>private</category>

<body package="CS474">updateList
	"comment stating purpose of message"

	| cname cobject superCls |
	cname := currentClass value.
	cname isBehavior ifTrue: [cname := cname name].
	cobject := Smalltalk at: cname.
      superCls := cobject superclass.
	cobject isNil 
		ifTrue: [superName value: 'Illegal class name']
		ifFalse: 
			[subclassList
					list:  (cobject subclasses collect: [ :x | x name]) asSortedCollection.
			instanceVariableList list: cobject allInstVarNames.
			methodList list: cobject selectors asSortedCollection.
			superName value: (superCls isNil ifFalse: [superCls name] ifTrue:['nil']).].
	^self</body>

<body package="CS474">newSelection
	"comment stating purpose of message"

	| cname |
	cname := subclassList selection.
      cname isNil ifTrue: [^self] .
      currentClass value: cname.
	^self</body>
</methods>



</st-source>
