import javascript

// from CallExpr dollarCall, Expr dollarArg
// where dollarCall.getCalleeName() = "$"
// and dollarCall.getArgument(0) = dollarArg
// select dollarArg

from DataFlow::Node dollarArgNode
where jquery().getACall().getArgument(0) = dollarArgNode
select dollarArgNode