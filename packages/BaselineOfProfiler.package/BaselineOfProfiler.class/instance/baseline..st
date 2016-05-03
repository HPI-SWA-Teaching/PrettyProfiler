baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Profiler-Core';
                package: 'Profiler-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Profiler-Core');
                group: 'Tests' with: #('Profiler-Tests') ]