import javascript

// from CallExpr dollarCall, Expr dollarArg
// where dollarCall.getCalleeName() = "$"
// and dollarCall.getArgument(0) = dollarArg
// select dollarArg

// from DataFlow::Node dollarArgNode
// where jquery().getACall().getArgument(0) = dollarArgNode
// select dollarArgNode

//from DataFlow::SourceNode srcNode, DataFlow::FunctionNode fn
//select jquery().

// from DataFlow::Node srcNode, DataFlow::PropRead fnRead
// where jquery().getACall().getArgument(0) = srcNode
// where fnRead.getPropertyName() = "fn"
// and srcNode = fnRead.getBase() 
//and srcNode = jquery()
select jquery().getAPropertyRead("fn")