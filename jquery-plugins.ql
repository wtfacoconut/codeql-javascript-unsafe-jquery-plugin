import javascript

from DataFlow::FunctionNode funcNode, DataFlow::SourceNode srcNode
where srcNode = jquery().getAPropertyRead("fn")
and srcNode.getAPropertySource() = funcNode
select funcNode //srcNode