# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Création d'une ville
city = City.create(name: "Paris")

# Création de deux docteurs
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "12345", city: city)
doctor2 = Doctor.create(first_name: "Jane", last_name: "Smith", zip_code: "67890", city: city)

# Création de deux patients
patient1 = Patient.create(first_name: "Alice", last_name: "Doe", city_id:1)
patient2 = Patient.create(first_name: "Bob", last_name: "Smith",city_id:1)

# Création de deux spécialités
specialty1 = Specialty.create(name: "Cardiologie")
specialty2 = Specialty.create(name: "Dermatologie")

# Association des spécialités aux docteurs
doctor1.specialties << specialty1
doctor2.specialties << specialty2

# Création de deux rendez-vous
appointment1 = Appointment.create(date: DateTime.now, doctor: doctor1, patient: patient1, city: city)
appointment2 = Appointment.create(date: DateTime.now, doctor: doctor2, patient: patient2, city: city)
