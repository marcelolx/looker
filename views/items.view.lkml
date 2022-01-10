view: items {
  sql_table_name: public.items ;;
  drill_fields: [pk1_item_id]

  dimension: pk1_item_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}."organization_id"
  }
}