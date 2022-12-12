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
    {email: "admin@gmail.com", password: "123456", rol: "Admin"}
    ])

Sucursal.create([
    {nombre: "La Loma", direccion: "46 nro 1234", telefono: "221445789"},
    {nombre: "Los Hornos", direccion: "137 nro 1234", telefono: "2212344789"},
    {nombre: "La Matanza", direccion: "503 nro 1234", telefono: "22134564"},
    ])

Turn.create([
    {fecha: "2022-12-01", hora: "20:52:00", estado: "Pendiente", motivo: "Hola", user_id: "1", sucursal_id: "1"},
    {fecha: "2022-12-02", hora: "20:52:00", estado: "Pendiente", motivo: "Chau", user_id: "1", sucursal_id: "2"}
    ])

Horario.create([
    {inicio: "09:00:00", fin: "15:00:00"},
    {inicio: "08:00:00", fin: "14:00:00"},
    {inicio: "09:00:00", fin: "15:00:00"},
    {inicio: "08:00:00", fin: "14:00:00"},
    {inicio: "09:00:00", fin: "15:00:00"}
    ])

SucursalHorario.create([
    {sucursal_id: "1", horario_id: "1", dia: "Lunes"},
    {sucursal_id: "1", horario_id: "2",dia: "Martes"},
    {sucursal_id: "1", horario_id: "3", dia: "Miercoles"},
    {sucursal_id: "1", horario_id: "4", dia: "Jueves"},
    {sucursal_id: "1", horario_id: "5", dia: "Viernes"},
    {sucursal_id: "2", horario_id: "1", dia: "Lunes"},
    {sucursal_id: "2", horario_id: "1",dia: "Martes"},
    {sucursal_id: "2", horario_id: "1", dia: "Miercoles"},
    {sucursal_id: "2", horario_id: "1", dia: "Jueves"},
    {sucursal_id: "2", horario_id: "1", dia: "Viernes"},
    {sucursal_id: "3", horario_id: "1", dia: "Lunes"},
    {sucursal_id: "3", horario_id: "1",dia: "Martes"},
    {sucursal_id: "3", horario_id: "1", dia: "Miercoles"},
    {sucursal_id: "3", horario_id: "1", dia: "Jueves"},
    {sucursal_id: "3", horario_id: "1", dia: "Viernes"}
    ])