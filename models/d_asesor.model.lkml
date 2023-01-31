connection: "alpunto"

# include all the views
include: "/views/**/*.view"

datagroup: d_asesor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: d_asesor_default_datagroup

explore: admin_users {}

explore: challenges {}

explore: clients {}

explore: comments {}


explore: essentials {
  join: groups {
    type: left_outer
    sql_on: ${essentials.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }
}

explore: groups {}

explore: images {}

explore: img_review {}

explore: missings {}

explore: products {}

explore: recognitions {}

explore: review {}

explore: stores {}

explore: users {}

explore: visits {
  join: stores {
    type: inner
    sql_on: ${visits.store} = ${stores.store_key} ;;
    relationship: many_to_one}

  join: users {
    type: left_outer
    sql_on: ${users.username} = ${visits.uid} ;;
    relationship: many_to_one}

  join: missings {
    type: left_outer
    sql_on: ${missings.session_id} = ${visits.session_id};;
    relationship: many_to_one}

  join: images {
    type: left_outer
    sql_on: ${images.session_id} = ${visits.session_id}
      ;;
    relationship: many_to_one}

  join: missings_products {
    type: left_outer
    sql_on: ${missings_products.session_id} = ${visits.session_id}
      ;;
    relationship: many_to_one}

}
