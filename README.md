# RainwaterTrap

The RainwaterTrap consists of vertical blocks of various sizes arranged in a row. The aim of this exercise is to calculate the rainwater that could be trapped inside these boxes. 

## Approach
The rainwater will be trapped in such enclosures where there are block of sufficient size. Hence start with the arrangement of blocks in  descending order. The volume occupied by the blocks will not be replaced by rainwater. Hence these need to be subtracted from the total volume calculated. We repeat this procedure on either side of considered blocks on the original arrangement. 


