Class {
	#name : #CirclePackingBubbleModel,
	#superclass : #Object,
	#instVars : [
		'name',
		'bubbleValue',
		'group',
		'title',
		'link',
		'linkTarget'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
CirclePackingBubbleModel class >> name: aNameText value: aValue group: aGroupValue title: aTitleText [

	^ self new
		  name: aNameText;
		  bubbleValue: aValue;
		  group: aGroupValue;
		  title: aTitleText;
		  yourself
]

{ #category : #creation }
CirclePackingBubbleModel class >> name: aNameText value: aValue group: aGroupValue title: aTitleText link: aLink linkTarget: aLinkTarget [

	^ self new
		  name: aNameText;
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

	| model |
	model := Dictionary3DS new.
	model
		addKey: 'name' withValue: name;
		addKey: 'label' withValue: name;
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
