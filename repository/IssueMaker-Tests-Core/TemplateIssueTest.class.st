Class {
	#name : #TemplateIssueTest,
	#superclass : #TestCase,
	#category : #'IssueMaker-Tests-Core'
}

{ #category : #testing }
TemplateIssueTest >> testContentsWithArguments [
	"test contents with arguments"

	| expected template arguments |
	expected := 
'"
Pharo image: Pharo1.4a#14059
Virtual machine used: Squeak4.1 of 17 April 2010 [latest update: #9957] 
Platform Name: unix
Class browser used (if applicable): Browser

Steps to reproduce:
#.
#.
#.
Actual Result:
#.
Expected Result:
#.
"'.
	arguments := {	'Pharo1.4a'.
					'14059'.
					'Squeak4.1 of 17 April 2010 [latest update: #9957] '.
					'unix'.
					'Browser'. }.
	template := TemplateIssue new.
	self assert: expected equals: (template contentsWith: arguments).
]

{ #category : #testing }
TemplateIssueTest >> testDefaultContentsWithActualArguments [
	"test default contents with actual arguments"

	| contents |
	contents := TemplateIssue defaultContents.
	self deny: contents isNil.
	self deny: contents isEmpty.
]
