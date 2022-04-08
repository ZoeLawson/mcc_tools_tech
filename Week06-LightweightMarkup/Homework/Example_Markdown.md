# Here is a title

I am writing in markdown.

All titles start with at least one #.

It must be at the start of the line, and there must be a space after it.

The number of # indicates the heading level.

`### this is a third level heading`

becomes

### this is a third level heading

To make a paragraph, you just start typing.
You have to put a blank line between separate paragraphs.
Otherwise the markdown interpreter will just
treat it as a single
paragraph
even
if
I
put
a 
carriage 
return 
after 
each
word.

Until there is a blank line between the text, it's not treated as a new paragraph.

     You can have indented text.

     But that means you have to start the line with the correct number of spaces. 
     
     The correct number might be 5.

# Inline formatting

Inline formatting is relatively easy.

Text surrounded by a single underscore or asterisk becomes *italic*.

Text surrounded by two underscores or asterisks becomes __bold__.

To make text `monospace` (such as for code examples), use a backtick \`.

While not generally recommended for technical documentation, you can use two tilde for ~~strikeout~~. 

If you want to use any of these _reserved characters_, use a backslash before the character (\*, \__, \`, \~)

# Lists

There are two types of lists, bulleted and numbered.

- bulleted lists can start with a hyphen and a space
* or an asterisk and a space.

For numbered lists, you just use the number 1 followed by a period and a space.

1. It seems very simple.
1. But it can be difficult to keep using
1. Just the number 1 and a period.

You can mix and match to have nested lists. Just be careful with the number of spaces before the list indicator.

* first level of list
  1. This is a nested number
     * with a nested bullet
  1. Here's another nested numbered list
     1. and more nesting.

        and to keep paragraphs aligned, make sure you have the correct number of spaces before hand.

  See, this lines up with the first level of the list.
  
Keeping all the levels properly spaced can be finicky.

# Images and Links

A link is `[the link text in square brackets](followed by URL in parenthesis)`

[google](https://www.google.com)

Images in text files are really just links. The only difference is that you start with an exclamation point.

`![alt text](relative/path/to/image)`

![Same example image as last week](../../Week05-AgileHTML/Homework/Example_image.png)

The alt text is used if the image file can't be found. It is also used by screen readers for the visually impaired. 

![Image with broken link to show alt text](this/file/does/not/exist.jpg)

# Tables

Tables can be tricky

Column 1 Head | Column 2 Head | Col 3 Head
---|---|---
row 1 col 1 | row 1 col 2 | row 1 col 3
row 2 col 1 | row 2 col 2 | row 2 col 3
It can be weird | because it doesn't matter how long a cell is | You just have to make sure
you | have | the 
correct | number | of 
pipes | in the | row

If you want to do anything interesting with tables, you're probably better off using an HTML table in the markdown file.

:water_buffalo: :radio_button: :o: :interrobang: :warning: 