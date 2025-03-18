{% macro calculate_discount(price, discount_rate) %}
    {% if discount_rate > 1 %}
        {{ exceptions.raise_compiler_error("Discount rate cannot be greater than 1") }}
    {% endif %}
    {{ price * discount_rate }}  -- This line may produce unexpected results if discount_rate is not validated
{% endmacro %}
