; inherits: rust

(delim_nodes) @indent.begin

(element_node) @indent.begin

(fragment_node) @indent.begin

(self_closing_element_node) @indent.begin

(open_tag
  ">" @indent.branch)

(self_closing_element_node
  "/>" @indent.branch)

(fragment_node
  "</>" @indent.branch)

(close_tag) @indent.branch

[
  ">"
  "/>"
  "</>"
] @indent.end

(ERROR) @indent.auto
