User.create(username: 'admin', password: '123456', email: 'admin@surveyhorse.com', role: 3)
User.create(username: 'alibugra', password: '123456', email: 'alibugra@surveyhorse.com', role: 1)
User.create(username: 'alibaba', password: '123456', email: 'alibaba@surveyhorse.com', role: 2)

# Role.create(name: 'System Admin', role_id: 3)
Role.create(name: 'Survey Manager', role_id: 2)
Role.create(name: 'Surveyor', role_id: 1)
