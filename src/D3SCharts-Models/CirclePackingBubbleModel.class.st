"
I represent a protocol that the bubble model must to conform to generate the information for Circle Packing Bubble Chart's model

My main responsibilities - I represent all the information that must be added to the bubble model for graph representation

Public API and Key Messages

- model => representation of graph information in JSON format through the D3SCharts-Parsers
"
Class {
	#name : #CirclePackingBubbleModel,
	#superclass : #D3SModel,
	#instVars : [
		'name',
		'label',
		'bubbleValue',
		'group',
		'title',
		'link',
		'linkTarget'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
CirclePackingBubbleModel class >> name: aNameText label: aLabelText value: aValue group: aGroupValue title: aTitleText [

	^ self new
		  name: aNameText;
		  label: aLabelText;
		  bubbleValue: aValue;
		  group: aGroupValue;
		  title: aTitleText;
		  yourself
]

{ #category : #creation }
CirclePackingBubbleModel class >> name: aNameText label: aLabelText value: aValue group: aGroupValue title: aTitleText link: aLink linkTarget: aLinkTarget [

	^ self new
		  name: aNameText;
		  label: aLabelText;
		  bubbleValue: aValue;
		  group: aGroupValue;
		  title: aTitleText;
		  link: aLink;
		  linkTarget: aLinkTarget;
		  yourself
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> bubbleValue [

	^ bubbleValue
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> bubbleValue: aValue [

	bubbleValue := aValue
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> group [

	^ group
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> group: aValue [

	group := aValue
]

{ #category : #initialization }
CirclePackingBubbleModel >> initialize [

	super initialize.
	model := D3SDictionary new.
]

{ #category : #accessing }
CirclePackingBubbleModel >> label [

	^ label
]

{ #category : #accessing }
CirclePackingBubbleModel >> label: anObject [

	label := anObject
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> link [

	^ link
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> link: aLink [

	link := aLink
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> linkTarget [

	^ linkTarget
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> linkTarget: aLinkTarget [

	linkTarget := aLinkTarget
]

{ #category : #accessing }
CirclePackingBubbleModel >> model [

	"Returns the info model in a dictionary that represents de JSON data for chart"

	model
		addKey: 'name' withValue: name;
		addKey: 'label' withValue: label;
		addKey: 'value' withValue: bubbleValue;
		addKey: 'title' withValue: title;
		addKey: 'group' withValue: group;
		addKey: 'link' withValue: link;
		addKey: 'linkTarget' withValue: linkTarget.

	^ model printString
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> name [

	^ name
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> name: aText [

	name := aText
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> title [

	^ title
]

{ #category : #'accessing - private' }
CirclePackingBubbleModel >> title: aText [

	title := aText
]
