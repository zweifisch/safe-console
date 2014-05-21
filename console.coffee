unless window.localStorage?.debug is 'on' and window.console
    _console = {}
    fn = ->
    for method in 'assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn'.split ','
        _console[method] = fn
    window.console = _console
