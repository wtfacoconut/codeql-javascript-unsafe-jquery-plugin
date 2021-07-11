import javascript

from DataFlow::FunctionNode funcNode
where funcNode = jquery().getAPropertyRead("fn").getAPropertySource()
select funcNode, funcNode.getLastParameter()