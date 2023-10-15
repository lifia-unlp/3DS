"
I represent the adapter for Object class for the PartitionSunburstChart's

My main responsibilities - I set that messages must to answer the Object adapter

Public API and Key Messages

 	- label 
	- title
	- name
	- link 
	- linkTarget
	- children

	- how to create instances:
	
 		adapter := ObjectPartitionSunburstAdapter withAdaptee: anObject
"
Class {
	#name : #ObjectPartitionSunburstAdapter,
	#superclass : #PartitionSunburstChartInterface,
	#category : #'D3SCharts-Adapters'
}

{ #category : #adding }
ObjectPartitionSunburstAdapter >> addNestedChildrensFrom: anObject [

	| subsClasses array partition cantSubs tempObject |
	array := D3SArray new.

	subsClasses := anObject subclasses.

	subsClasses
		ifEmpty: [ 
			^ nil ]
		ifNotEmpty: [ 
			cantSubs := subsClasses size.
			1 to: cantSubs do: [ :each | 
				tempObject := subsClasses at: each.
				partition := PartitionSunburstModel
					             name: tempObject printString
					             label: tempObject printString
					             children: (self addNestedChildrensFrom: tempObject)
					             title: tempObject printString
					             link: ''
					             linkTarget: ''.
				array add: partition getModelToPrint ].
			^ array ]
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> children [

	| subsClasses array partition cantSubs tempObject |
	array := D3SArray new.

	subsClasses := adaptee subclasses .

	cantSubs := subsClasses size.

	1 to: cantSubs do: [ :each | 
		tempObject := subsClasses at: each.
		partition := PartitionSunburstModel
			             name: tempObject printString
			             label: tempObject printString
			             children: (self addNestedChildrensFrom: tempObject)
			             title: tempObject printString
			             link: ''
			             linkTarget: ''.
		array add: partition getModelToPrint ].

	^ array
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> label [

	^ adaptee printString
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> link [

	^ ''
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> linkTarget [

	^ 'nil'
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> name [

	^ adaptee printString
]

{ #category : #accessing }
ObjectPartitionSunburstAdapter >> title [

	^ adaptee printString
]
