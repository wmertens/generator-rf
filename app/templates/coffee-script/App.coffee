React = require('react')
{span, div, header, h1, h3, article, p, a} = React.DOM
N = null

App = React.createClass
  render: ->
    codeBlockStyle =
      fontFamily: "monospace"
      backgroundColor: "#D0D0D0"
    codeBlock = (args...)->
      span style:codeBlockStyle, args

    div N,
      header N,
        h1 N, "<%= appname %>"
        h3 N, "<%= description %>"

      article className: "context",
        p N,
          "Greetings from ", (a href: "https://github.com/taiansu/generator-rf", "RF generator"), "."

        p N,
          "Remember you are powered with "
          a href: "https://gaearon.github.io/react-hot-loader/", "react-hot-loader"
          " now. Edit this file in "
          codeBlock "src/scripts/components/App.coffee"
          " and save it, it will auto reload the page for you."
        <p>
          Note that you can use <a href="https://github.com/jsdf/coffee-react">CJSX</a> as
          well as {a href:"http://neugierig.org/software/blog/2014/02/react-jsx-coffeescript.html", "plain coffeescript"} for markup.
        </p>

module.exports = App
