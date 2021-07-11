import javascript

//from DataFlow::Node srcNode

// where jquery().getACall().getArgument(0) = srcNode
// where fnRead.getPropertyName() = "fn"
// and srcNode = fnRead.getBase() 
//and srcNode = jquery()

//where srcNode = jquery().getAPropertyRead("fn") 
//select srcNode.getFile().getBaseName(), srcNode
select jquery().getAPropertyRead("fn")