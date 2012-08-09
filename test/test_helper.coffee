# http://chaijs.com/
global.assert = require('chai').assert

# https://github.com/tmpvar/jsdom/
jsdom = require('jsdom')
global.document = jsdom.jsdom('<html><body></body></html>')
global.window   = document.createWindow()

# That one you know, no?
global.jQuery = global.$ = require('jquery')
