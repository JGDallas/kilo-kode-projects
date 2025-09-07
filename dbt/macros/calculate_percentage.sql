{% macro calculate_percentage(numerator, denominator) %}
  case when {{ denominator }} = 0 then 0
       else ({{ numerator }} / {{ denominator }}) * 100
  end
{% endmacro %}