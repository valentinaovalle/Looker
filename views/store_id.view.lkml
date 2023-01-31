view: store_id {
  derived_table: {
    sql: UPDATE visits
      SET Store_ID = CASE
        WHEN store='true' THEN resp
        ELSE store
      END
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: update_count {
    type: number
    sql: ${TABLE}."update_count" ;;
  }

  set: detail {
    fields: [update_count]
  }
}
