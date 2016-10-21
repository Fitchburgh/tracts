# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tenant.create(
#   name: 'Brandon Fitch',
#   address: '133 Lyon St',
#   student: true,
#   employer: 'TIY',
#   down_pay: true,
#   phone: '5551114444',
#   emer_contact: 'Joe 5555555555',
#   notes: 'Best tenant ever.'
# )
#
# Owner.create(
#   manager_id: 1,
#   name: 'Joe M'
# )
#
# Unit.create(
#   tenant_id: 1,
#   manager_id: 1,
#   owner_id: 1,
#   name: 'Lyon\'s Den',
#   address: '133 Lyon St. Cincinnati, OH 45219',
#   open_tickets: 0,
#   tenant_signatory: 'Brandon Fitch',
#   other_tenants: 'Madison Damian Marty',
#   notes: 'Unit was in bad shape when we rented to current tenants.'
# )

Tenant.create(
  name: 'Damian D',
  address: '5534 sadf eef',
  student: true,
  employer: 'asdf',
  down_pay: true,
  phone: '634672378',
  emer_contact: 'Joe 785787823',
  notes: 'Best tenant ever.'
)

Owner.create(
  manager_id: 1,
  name: 'asdf M'
)

Unit.create(
  tenant_id: 2,
  manager_id: 1,
  owner_id: 2,
  name: 'asdfsaf',
  address: 'sdggdsggs',
  open_tickets: 2,
  tenant_signatory: 'asdf Fitch',
  other_tenants: 'asdf',
  notes: 'Unit was in bad shape when we rented to current tenants.'
)
