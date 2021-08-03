{% macro pre_ops (operation_level) %} 
INSERT INTO audit_db.public.audits (operation_level)
VALUES (`{{operation_level}}`)

{% endmacro %}