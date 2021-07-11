import javascript 

predicate isSource(DataFlow::Node inSrcNode){
    exists( DataFlow::FunctionNode funcNode |
        inSrcNode = funcNode
        and exists(funcNode.getAParameter())
        and funcNode = jquery().getAPropertyRead("fn").getAPropertySource()
    )
}

from DataFlow::Node srcNode
where isSource(srcNode)
select srcNode