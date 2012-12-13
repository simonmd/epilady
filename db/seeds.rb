# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
              { :name => 'admin' },
              { :name => 'user' },
              { :name => 'VIP' }
], :without_protection => true)

puts 'CREATING RADIOLOGISTS'
user1=User.create(name: "Jorge A. Delgado", email: "jorge.delgado@iatm.com.co", password: "jdelgado", password_confirmation: "jdelgado")
user1.add_role :admin

user2=User.create(name: "Juan F. Llano",email: "juan.llano@iatm.com.co", password: "jllano", password_confirmation: "jllano")
user2.add_role :admin

puts 'CREATING PATIENTS'
p1=Patient.create(age: 20, code:"S01", name: "Robinson Guerra Osorio", patid:"CC1036399544",sex: "M", infoclinica15: "Masculino de 20 anos con foco parietal-temporal izquierdo" ,infoclinica3: "Hombre de 18 anos con foco parietotemporal izquierdo")
p2=Patient.create(age: 47, code:"S02", name: "Diego Alonso Montoya Restrepo",patid:"CC70564172", sex:"M", infoclinica15: "Hombre de 47 anos con sospecha de foco temporal derecho", infoclinica3:"Masculino de 48 anos con posible foco temporal derecho")
p3=Patient.create(age: 44, code:"S03", name: "Luz Ofelia Ruiz Zapata",patid:"CC43673712", sex: "F", infoclinica15: "Mujer de 44 anos con posible foco frontal izquierdo",infoclinica3:"Paciente femenina de 40 anos con foco electrico frontal izquierdo")
p4=Patient.create(age: 30, code:"S04", name: "Deisy Liliana Mosquera Giraldo",patid:"CC35604585", sex:"F", infoclinica15: "Paciente femenina de 30 anos con epilepsia frontal derecha", infoclinica3:"Mujer de 34 anos con crisis frontales del lado derecho")
p5=Patient.create(age: 24, code:"S05", name: "Yuliana Andrea Padierna Jaramillo",patid:"CC1128471081", sex:"F", infoclinica15: "Mujer de 24 anos con crisis de origen frontotemporal derecho",infoclinica3:"Femenina de 23 anos con epilepsia frontotemporal derecha")
p6=Patient.create(age: 35, code:"S06", name: "Alejandra Mariia Ramirez Blandon",patid:"CC43220818", sex:"F", infoclinica15: "Mujer de 35 anos con sospecha de foco temporoccipital izquierdo", infoclinica3:"Mujer de 33 anos con posible foco temporal y occipital izquierdo")
p7=Patient.create(age: 35, code:"S07", name: "Jair Arledy Garcia Patino", patid: "CC98569203", sex:"M", infoclinica15: "Masculino de 35 anos con sospecha de foco temporal derecho", infoclinica3:"Hombre de 37 anos con epilepsia de posible foco temporal derecho")
p8=Patient.create(age: 44, code:"S08", name: "Juan Carlos Munoz Cano",patid:"CC98497090", sex:"M", infoclinica15: "Masculino de 44 anos con epilepsia centro parietal derecha", infoclinica3:"Masculino de 46 anos con sospecha de foco centro parietal derecho")
p9=Patient.create(age: 13, code:"S09", name: "Jose David Jaramillo Velasquez",patid:"CC1000410293", sex:"M", infoclinica15: "Nino de 13 anos con sospecha de foco frontal derecho", infoclinica3:"Masculino de 15 anos con posible epilepsia frontal derecha")
p10=Patient.create(age: 16, code:"S010", name: "Esteban Caro Caro",patid:"CC96070216202", sex:"M", infoclinica15: "Masculino de 16 anos con foco frontal vs temporal izquierdo", infoclinica3:"Hombre de 17 anos con posible foco frontal o temporal izquierdo")
p11=Patient.create(age: 50, code:"S011", name: "Luz Marina Fernandez Jaramillo",patid:"CC39166905", sex:"F", infoclinica15: "Mujer de 50 anos con posible foco temporal neo cortical izquierdo", infoclinica3:"Mujer de 49 anos con epilepsia temporal neo cortical izquierda")
p12=Patient.create(age: 40, code:"S012", name: "Edison Alonso Agudelo Echavarria",patid:"CC98530070", sex:"M", infoclinica15: "Masculino de 40 anos con posible foco temporal vs frontal izquierdo", infoclinica3:"Hombre 42 anos con sospecha de foco temporal o frontal izquierdo")
p13=Patient.create(age: 50, code:"S013", name: "Hector Ivan Botero Jaramillo",patid:"CC70630676", sex:"M", infoclinica15: "Hombre de 50 anos con epilepsia multifocal no concordante", infoclinica3:"Masculino de 49 anos con multiples focos frontal y temporales")
p14=Patient.create(age: 19,code:"S014", name: "Daniela Sanudo Gomez",patid:"CC93061203735", sex:"F", infoclinica15:"Mujer de 19 anos con posible epilepsia insular derecha", infoclinica3:"Mujer de 22 anos con epilepsia de posible foco en insula derecha")
p15=Patient.create(age: 34, code:"S015", name: "Edison Arbey Florez Londono",patid:"CC71333318" , sex:"M", infoclinica15: "Hombre de 34 anos con epilepsia de posible foco temporal izquierdo",infoclinica3:"Masculino de 30 anos con epilepsia, foco temporal izquierdo")

#revisar edades reales