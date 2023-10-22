Class {
	#name : #D3SPrinterInterface,
	#superclass : #Object,
	#category : #'D3SCharts-Parsers'
}

{ #category : #printing }
D3SPrinterInterface >> printModel [

	self subclassResponsibility
]

{ #category : #printing }
D3SPrinterInterface >> printString [ 

	self subclassResponsibility
]
