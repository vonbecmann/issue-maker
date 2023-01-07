"
a template of an issue. like the following

'Pharo image: <1s>#<2s>
Virtual machine used: <3s>
Platform Name: <4s>
Class browser used (if applicable): <5s>

Steps to reproduce:
#.
#.
#.'.
with the proper arguments, i'll give you the actual template issue and you will need to fill
the steps to reproduce it.
"
Class {
	#name : #TemplateIssue,
	#superclass : #Object,
	#instVars : [
		'templateString'
	],
	#category : #'IssueMaker-Core'
}

{ #category : #accessing }
TemplateIssue class >> defaultContents [
	"default contents for the actual values of this system"
	
	| arguments |
	arguments := {	SystemVersion current version.
				 	SystemVersion current highestUpdate printString.
				 	Smalltalk vm version.
					Smalltalk os platformName.
					Smalltalk tools browser asString. }.
	^ (self new) contentsWith: arguments.
]

{ #category : #accessing }
TemplateIssue >> contentsWith: anArgumentArray [ 
	"returns contents for the arguments."
	
	^templateString expandMacrosWithArguments: anArgumentArray.
]

{ #category : #'initialize-release' }
TemplateIssue >> initialize [
	super initialize.
	templateString := 
'"
Pharo image: <1s>#<2s>
Virtual machine used: <3s>
Platform Name: <4s>
Class browser used (if applicable): <5s>

Steps to reproduce:
#.
#.
#.
Actual Result:
#.
Expected Result:
#.
"'.
]
