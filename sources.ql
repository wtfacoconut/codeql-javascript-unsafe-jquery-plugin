import javascript 

predicate isSource(DataFlow::Node inSrcNode){
    exists( DataFlow::ParameterNode paramNode |
        inSrcNode = paramNode
        and exists(DataFlow::FunctionNode funcNode |
            funcNode.getLastParameter() = paramNode
            and funcNode = jquery().getAPropertyRead("fn").getAPropertySource()
        )
    )
}

from DataFlow::Node srcNode
where isSource(srcNode)
select srcNode
