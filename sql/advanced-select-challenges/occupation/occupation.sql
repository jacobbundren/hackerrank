select
    [Doctor],
    [Professor],
    [Singer],
    [Actor]
from (
    select row_number() over (partition by occupation order by name) as  row_number, [name], [occupation]
     from occupations) as pivot_data
pivot (
        max(name) for [occupation] in ([Doctor],[Professor],[Singer],[Actor])) as pivot_table
order by row_number
