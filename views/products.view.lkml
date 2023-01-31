view: products {
  sql_table_name: public.products ;;
  drill_fields: [product_id]

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."display_name" ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}."ean" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: train_name {
    type: string
    sql: ${TABLE}."train_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_id, display_name, train_name]
  }
}
