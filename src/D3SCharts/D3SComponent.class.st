"
To register the demo components evaluate

```Smalltalk
D3SComponent subclassesDo: [ :each | WAAdmin register: each asApplicationAt: each name ] 
```
"
Class {
	#name : #D3SComponent,
	#superclass : #WAComponent,
	#instVars : [
		'height',
		'width'
	],
	#category : #D3SCharts
}

{ #category : #accessing }
D3SComponent >> height [
	^ height
]

{ #category : #accessing }
D3SComponent >> height: anObject [
	height := anObject
]

{ #category : #updating }
D3SComponent >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
    anHtmlRoot javascript url: 'https://d3js.org/d3.v7.js'.

]

{ #category : #accessing }
D3SComponent >> width [
	^ width
]

{ #category : #accessing }
D3SComponent >> width: anObject [
	width := anObject
]
