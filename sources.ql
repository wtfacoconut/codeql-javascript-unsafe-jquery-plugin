import javascript 

predicate isSource(DataFlow::Node inSrcNode){
    // exists( DataFlow::FunctionNode funcNode |
    //     inSrcNode = funcNode
    //     and exists(funcNode.getAParameter())
    //     and funcNode = jquery().getAPropertyRead("fn").getAPropertySource()
    // )
    // or
    exists( DataFlow::ParameterNode paramNode |
        inSrcNode = paramNode
        and exists(DataFlow::FunctionNode funcNode |
            funcNode.getParameter(0) = paramNode
            and funcNode = jquery().getAPropertyRead("fn").getAPropertySource()
        )
    )
}

from DataFlow::Node srcNode
where isSource(srcNode)
select srcNode
