## String#shatter

    require 'facets/string/shatter'

    s = "<p>This<b>is</b>a test.</p>"
    r = s.shatter( /<.*?>/ )
    x = ["<p>", "This", "<b>", "is", "</b>", "a test.", "</p>"]
    r.assert == x

