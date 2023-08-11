select
    case
        when p is null then concat(n, ' Root')
        when n in (select p from bst) then concat(n, ' Inner')
        else concat(n, ' Leaf')
    end
from bst order by n;