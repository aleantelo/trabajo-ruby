# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
    {email: "cliente@gmail.com", password: "123456", rol: "Cliente"},
    {email: "personal@gmail.com", password: "123456", rol: "Personal Bancario"},
    {email: "admin@gmail.com", password: "123456", rol: "Admin"}])

Sucursal.create([
    {nombre: "La Loma", direccion: "46 nro 1234", telefono: "221445789", borrado: "N"},
    {nombre: "Los Hornos", direccion: "137 nro 1234", telefono: "2212344789",borrado: "N"},
    {nombre: "La Matanza", direccion: "503 nro 1234", telefono: "22134564",borrado: "N"},
    ])

Turn.create([
    {fecha: "2022-12-01", hora: "20:52:00", estado: "Pendiente", motivo: "Hola", user_id: "1", sucursal_id: "1"},
    {fecha: "2022-12-02", hora: "20:52:00", estado: "Pendiente", motivo: "Chau", user_id: "1", sucursal_id: "2"}
])