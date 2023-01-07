Class {
	#name : #BaselineOfIssueMaker,
	#superclass : #BaselineOf,
	#category : #BaselineOfIssueMaker
}

{ #category : #baselines }
BaselineOfIssueMaker >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'IssueMaker-Core';
				package: 'IssueMaker-Tests-Core' with: [ spec requires: #('IssueMaker-Core') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('IssueMaker-Core');
				group: 'Tests' with: #('IssueMaker-Tests-Core') ]
]
