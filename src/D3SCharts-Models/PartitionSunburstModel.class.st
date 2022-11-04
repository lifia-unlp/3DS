"
I represent a protocol that the node model must to conform to generate the information for Partition Sunburst Chart's model

My main responsibilities - I represent all the information that must be added to the partition model for chart representation

Public API and Key Messages

- model => representation of partition's chart information in JSON format through the D3SCharts-Parsers
"
Class {
	#name : #PartitionSunburstModel,
	#superclass : #D3SModel,
	#instVars : [
		'name',
		'label',
		'children',
		'title',
		'link',
		'linkTarget'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
PartitionSunburstModel class >> name: aNameText label: aLabelText children: aPartitionSuburtsCollection title: aTitleText link: aLink linkTarget: aLinkTarget [

	^ self new
		  name: aNameText;
		  label: aLabelText;
		  children: aPartitionSuburtsCollection;
		  title: aTitleText;
		  link: aLink;
		  linkTarget: aLinkTarget;
		  yourself
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> children [
	
	children ifNil: [ ^ 'null' ] ifNotNil: [ ^ children ]
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> children: aPartitionSuburtsCollection [

	children := aPartitionSuburtsCollection
]

{ #category : #accessing }
PartitionSunburstModel >> getModelToPrint [

	"Returns the info model in a dictionary that represents de JSON data for chart"

	model
		addKey: 'name' withValue: name;
		addKey: 'label' withValue: label;
		addKey: 'title' withValue: title;
		addKey: 'link' withValue: link;
		addKey: 'linkTarget' withValue: linkTarget.

	children
		ifNotNil: [ model addKey: 'children' withValue: self children ]
		ifNil: [ model addKey: 'value' withValue: self sizeValue ].

	^ model
]

{ #category : #initialization }
PartitionSunburstModel >> initialize [

	super initialize.
	model := D3SDictionary new.
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> label [

	^ label printString
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> label: aText [

	label := aText
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> link [

	^ link
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> link: anObject [

	link := anObject
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> linkTarget [

	^ linkTarget
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> linkTarget: anObject [

	linkTarget := anObject
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> name [

	^ name printString
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> name: aText [

	name := aText
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> sizeValue [

	^ '1'
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> title [

	^ title printString
]

{ #category : #'accessing - private' }
PartitionSunburstModel >> title: aText [

	title := aText
]
