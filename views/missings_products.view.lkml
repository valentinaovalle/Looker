view: missings_products {
  derived_table: {
    sql: select (missings."session_id"), json_array_elements((missings."products")::json)
      from missings
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: json_array_elements {
    type: string
    sql: ${TABLE}."json_array_elements" ;;
  }
  dimension: prod_exist {
    type: string
    sql:json_extract_path_text(${json_array_elements},'exist') ;;
  }
  dimension: prod_class {
    case_sensitive: no
    type: string
    sql:json_extract_path_text(${json_array_elements},'class') ;;
  }
  dimension: prod_family {
    case_sensitive: no
    type: string
    sql:json_extract_path_text(${json_array_elements},'family') ;;
  }

  set: detail {
    fields: [session_id, json_array_elements]
  }
  measure: france_count {
    type: count   # COUNT(CASE WHEN users.country = 'France' THEN 1 ELSE NULL END)
    filters: [missings_products.prod_exist:"true"]
  }
}
