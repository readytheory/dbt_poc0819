{% test chk_duplicates(model, column_name) %}

    select count(*),{{column_name}}
    from {{model}}
    group by {{column_name}}
    having count(*)> 1

{% endtest %}


