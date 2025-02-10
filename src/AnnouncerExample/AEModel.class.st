Class {
	#name : #AEModel,
	#superclass : #Object,
	#instVars : [
		'announcer',
		'items'
	],
	#category : #'AnnouncerExample-Core'
}

{ #category : #'as yet unclassified' }
AEModel >> add: aValue [
	items add: aValue.
	self announcer announce: (AEItemsChanged new item: aValue).
]

{ #category : #accessing }
AEModel >> announcer [
	^ announcer
]

{ #category : #accessing }
AEModel >> announcer: anObject [
	announcer := anObject
]

{ #category : #'as yet unclassified' }
AEModel >> initialize [
	announcer := Announcer new.
	items := OrderedCollection new.
]

{ #category : #accessing }
AEModel >> items [
	^ items
]

{ #category : #accessing }
AEModel >> items: anObject [
	items := anObject
]
