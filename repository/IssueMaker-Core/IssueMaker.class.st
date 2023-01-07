"
riorSource: 99
"
Class {
	#name : #IssueMaker,
	#superclass : #Object,
	#category : #'IssueMaker-Core'
}

{ #category : #private }
IssueMaker class >> defaultContents [
	"defaultContents"

	^  TemplateIssue defaultContents.
]

{ #category : #private }
IssueMaker class >> defaultLabel [
	"default label"

	^ 'New Issue'
]

{ #category : #'instance creation' }
IssueMaker class >> newIssue [
	"open a workspace with the default contents for an issue"

	(Workspace openContents: self defaultContents) label: self defaultLabel
]
