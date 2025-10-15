
Prescription.destroy_all
Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all
Department.destroy_all


# ---- Departments ----
departments = Department.create!([
  { name: "Cardiology", floor: 2 },
  { name: "Neurology", floor: 3 },
  { name: "Pediatrics", floor: 1 },
  { name: "Orthopedics", floor: 4 }
])
puts "Created #{departments.size} departments"

# ---- Doctors ----
doctors = Doctor.create!([
  { name: "Dr. Ayesha Malik", specialization: "Cardiologist", experience_years: 10, department: departments[0] },
  { name: "Dr. Saad Khan", specialization: "Neurologist", experience_years: 7, department: departments[1] },
  { name: "Dr. Hina Tariq", specialization: "Pediatrician", experience_years: 5, department: departments[2] },
  { name: "Dr. Bilal Ahmed", specialization: "Orthopedic Surgeon", experience_years: 12, department: departments[3] }
])
puts "Created #{doctors.size} doctors"

# ---- Patients ----
patients = Patient.create!([
  { name: "Ali Raza", age: 35, gender: "Male" },
  { name: "Sara Ahmed", age: 28, gender: "Female" },
  { name: "Usman Qureshi", age: 42, gender: "Male" },
  { name: "Fatima Noor", age: 10, gender: "Female" }
])
puts "Created #{patients.size} patients"

# ---- Appointments ----
appointments = []
5.times do
  doctor = doctors.sample
  patient = patients.sample
  appointments << Appointment.create!(
    doctor: doctor,
    patient: patient,
    date: Time.now + rand(1..10).days,
    status: ["Scheduled", "Completed", "Cancelled"].sample
  )
end
puts "Created #{appointments.size} appointments"

# ---- Prescriptions ----
appointments.each do |appointment|
  Prescription.create!(
    appointment: appointment,
    medicine_name: ["Paracetamol", "Amoxicillin", "Ibuprofen", "Cough Syrup"].sample,
    dosage: rand(1..3)
  )
end
puts "Created #{Prescription.count} prescriptions"

puts "Seeding complete!"
