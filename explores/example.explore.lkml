include: "/views/items.view"
include: "/views/organizations.view"
include: "/views/addresses.view"

explore: invoices {
  view_name: items

  join: organizations {
    type: inner
    relationship: one_to_one
    sql_on: ${organizations.pk1_organization_id} = ${items.organization_id};;
  }

  join: addresses {
    view_label: "Organization Address"
    type:  inner
    relationship: one_to_one
    sql_on: ${organizations.address_id} = ${addresses.pk1_address_id};;
  }
}