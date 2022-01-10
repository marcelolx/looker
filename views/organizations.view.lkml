view: organizations {
  sql_table_name: public.organizations ;;
  drill_fields: [pk1_organization_id]

  dimension: pk1_organization_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: internal_id {
    description: "Organization ID"
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: address_id {
    type: number
    hidden: yes
    sql: ${TABLE}."address_id" ;;
  }
}