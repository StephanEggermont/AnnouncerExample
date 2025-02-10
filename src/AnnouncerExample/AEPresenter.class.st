Class {
	#name : #AEPresenter,
	#superclass : #Object,
	#instVars : [
		'lastOne'
	],
	#category : #'AnnouncerExample-Core'
}

{ #category : #accessing }
AEPresenter >> lastOne [
	^ lastOne
]

{ #category : #accessing }
AEPresenter >> lastOne: anObject [
	lastOne := anObject
]

{ #category : #'as yet unclassified' }
AEPresenter >> update: anItemsChanged [
	lastOne := anItemsChanged item.
]
