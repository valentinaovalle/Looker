view: users {
  sql_table_name: public.users ;;

  dimension: debug {
    type: yesno
    sql: ${TABLE}."debug" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."isActive" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension_group: register {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."register_at" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."role" ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}."team" ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}."telephone" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [username, name]
  }
}
