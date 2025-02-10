Class {
	#name : #BaselineOfAnnouncerExample,
	#superclass : #BaselineOf,
	#category : #BaselineOfAnnouncerExample
}

{ #category : #loading }
BaselineOfAnnouncerExample class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'AnnouncerExample' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfAnnouncerExample >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'AnnouncerExample'
		]
]
