import javascript

// If this submission works, I feel that the commented query below is a better solution (even though it failed) 
// from DataFlow::FunctionNode funcNode, DataFlow::SourceNode srcNode
// where srcNode = jquery().getAPropertyRead("fn")
// and srcNode.getAPropertySource() = funcNode
// select funcNode //srcNode funcNode


select jquery().getAPropertyRead("fn").getAPropertySource()