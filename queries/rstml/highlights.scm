(fragment_node) @tag.delimiter

(doctype_node) @constant

(doctype_node
  [
    "<!"
    ">"
  ] @tag.delimiter
  (#set! "priority" 101))

(open_tag
  [
    "<"
    ">"
  ] @tag.delimiter
  (#set! "priority" 101))

(close_tag
  [
    "</"
    ">"
  ] @tag.delimiter
  (#set! "priority" 101))

(self_closing_element_node
  [
    "<"
    "/>"
  ] @tag.delimiter
  (#set! "priority" 101))

(node_identifier
  [
    "-"
    ":"
    "::"
  ] @punctuation.delimiter
  (#set! "priority" 101))

(open_tag
  name: (node_identifier) @tag)

(close_tag
  name: (node_identifier) @tag)

(self_closing_element_node
  name: (node_identifier) @tag)

(node_attribute
  name: (node_identifier) @tag.attribute)

((text_node) @variable
  (#set! "priority" 101))

(comment_node
  [
    "<!--"
    "-->"
  ] @comment)
