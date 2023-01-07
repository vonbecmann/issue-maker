"
i know how to show a shortcut to IssueMaker on the World Menu
"
Class {
	#name : #IssueMakerOnWorldMenu,
	#superclass : #Object,
	#category : #'IssueMaker-Core'
}

{ #category : #private }
IssueMakerOnWorldMenu class >> defaultLabel [
	"default label"

	^ 'New Issue'
]

{ #category : #menu }
IssueMakerOnWorldMenu class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	(aBuilder item: #IssueMaker)
		label: self defaultLabel;
		target: IssueMaker; 
		selector: #newIssue;
		withSeparatorAfter
	
]
