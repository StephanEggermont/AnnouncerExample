Class {
	#name : #AEItemsChanged,
	#superclass : #Announcement,
	#instVars : [
		'item'
	],
	#category : #'AnnouncerExample-Core'
}

{ #category : #accessing }
AEItemsChanged >> item [
	^ item
]

{ #category : #accessing }
AEItemsChanged >> item: anObject [
	item := anObject
]
