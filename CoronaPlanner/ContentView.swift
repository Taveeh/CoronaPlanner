//
//  ContentView.swift
//  CoronaPlanner
//
//  Created by Octavian Custura on 14/11/2020.
//

import SwiftUI

struct CasesView: View {
    @State var country: String
    var body: some View {
        List {
            VStack {
                let p = Parser(name: country)
                let txt = p.ParseWorld()
                Text(txt)
            }
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let callback: Callback? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}
struct CountryListView2: View {
    private var countryList: [Country] = Countries.countries
    @State private var searchText = ""
    var body: some View {
        
        VStack {
            
            Text("Countries").font(.system(size: 30, weight: .black, design: .rounded))
            
            SearchBar(text: $searchText)
                .padding(.top)
        
            
            List(countryList.filter({
                searchText.isEmpty ? true : $0.name.contains(searchText)
            })) {
                item in
                    NavigationLink(destination: CasesView(country: item.name)) {
                    Text(item.name)
                }
        
            }
            }
            
            
            .padding(0.0)
        }
    }


struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {

            TextField("Search ... ", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                    if isEditing {
                        Button(action: {
                            self.text = ""
                            isEditing = false
                        }) {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
                        }
                    }
                })
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct CountryListView: View {
    private var countryList: [Country] = Countries.countries
    @State private var searchText = ""
    var body: some View {
        
        VStack {
            
            Text("Countries").font(.system(size: 30, weight: .black, design: .rounded))
            
            SearchBar(text: $searchText)
                .padding(.top)
        
            
            List(countryList.filter({
                searchText.isEmpty ? true : $0.name.contains(searchText)
            })) {
                item in
                    NavigationLink(destination: DataView(country: item.name)) {
                    Text(item.name)
                }
        
            }
            }
            
            
            .padding(0.0)
        }
    }

struct DataView: View {
    @State var country: String
    var body: some View {
        List {
            VStack {
                let p = Parser(name: country)
                Text(p.ParseWorld())
                Spacer()
                Text(p.ParseMAE())
                
            }
        }
    }
}

struct ShowDataView: View {
    var body: some View {
        CountryListView()
    }
}
struct ShowCasesView: View {
    var body: some View {
        CountryListView2()
    }
}
struct FormView: View {
    @State var firstName: String = ""
    @State var middleName: String = ""
    @State var lastName: String = ""
    @State var address: String = ""
    @State var dateOfBirth: String = ""
    @State var placeOfBirth: String = ""
    @State var work: String = ""
    @State var society: String = ""
    @State var work1: String = ""
    @State var work2: String = ""
    @State var currentAddress: String = ""
    @State var workCheck: Bool = false
    @State var medicalCheck: Bool = false
    @State var caretakingCheck: Bool = false
    @State var deceasedCheck: Bool = false
    @State var medicineCheck: Bool = false
    @State var show: Bool = false
    @State var url: [URL] = []
    @State var declaration: Declaration? = nil
    var body: some View {
        VStack{
            Group {
            HStack {
                Text("First Name: ")
                Spacer()
                TextField("Enter first name", text: $firstName)
            }
            HStack {
                Text("Middle Name: ")
                Spacer()
                TextField("Enter middle name", text: $middleName)
            }
            HStack {
                Text("Last Name: ")
                TextField("Enter last name", text: $lastName)
            }
            HStack {
                Text("Address: ")
                Spacer()
                TextField("Enter address: ", text: $address)
            }
            HStack {
                Text("Current address: ")
                Spacer()
                TextField("Enter current address: ", text: $currentAddress)
            }
            HStack {
                Text("Date of birth: ")
                Spacer()
                TextField("Date of birth: ", text: $dateOfBirth)
            }
            HStack {
                Text("Place of birth: ")
                Spacer()
                TextField("Enter place of birth: ", text: $placeOfBirth)
            }
            }
            Group {
            Text("Please state why you need to leave: ")
            HStack {
                Text("Work")
                Spacer()
                Toggle(isOn: $workCheck){}
            }
            HStack {
                Text("Society: ")
                Spacer()
                TextField("Enter society", text: $society)
            }
            HStack {
                Text("Location: ")
                Spacer()
                TextField("Enter location", text: $work)
            }
            HStack {
                Text("Society: ")
                Spacer()
                TextField("Enter society", text: $work1)
            }
            HStack {
                Text("Society: ")
                Spacer()
                TextField("Enter society", text: $work2)
            }
            HStack {
                Text("Medical Assistance")
                Spacer()
                Toggle(isOn: $medicalCheck){}

            }
            HStack {
                Text("Buying Medicine")
                Spacer()
                Toggle(isOn: $medicineCheck){}

            }
            HStack {
                Text("Caretaking")
                Spacer()
                Toggle(isOn: $caretakingCheck){}

            }
            HStack {
                Text("Deceased family member")
                Spacer()
                Toggle(isOn: $deceasedCheck){}
            }
            }
            Group {
            Button(action: {
                var name = firstName
                if middleName != "" {
                    name += " " + middleName
                }
                let date = dateOfBirth.components(separatedBy: ".").map{element in Int(element)}
                let dob = DateComponents(year: date[2], month: date[1], day: date[0])
                var duties = [Duty]()
                if workCheck {
                    duties.append(Work(society: society, location: work, workPoint1: work1, workPoint2: work2))
                }
                if medicalCheck {
                    duties.append(MedicalAssistance())
                }
                if medicineCheck {
                    duties.append(MedsBuy())
                }
                if caretakingCheck {
                    duties.append(Caretaking())
                }
                if deceasedCheck {
                    duties.append(DeceasedPerson())
                }
                let user = User(name: name, surname: lastName, address: address, currentAddress: currentAddress, dateOfBirth: dob, placeOfBirth: placeOfBirth)
                self.declaration = Declaration(user: user, currentDate: Date(), duties: duties)
                self.show = true
            }) {
            Text("Generate")
            }
            }.sheet(isPresented: $show) {
                ShareSheet(activityItems: [self.declaration?.url])
            }
        }
        
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
        VStack {
            Text("Corona Planner").font(.system(size: 30, weight: .black, design: .rounded))
            List {
            Spacer()
            NavigationLink(
                destination: ShowDataView(),
                label: {
                    Text("Informatii de calatorie")
                })
            Spacer()
                NavigationLink(destination: FormView(), label: {
                    Text("Declaratie pe proprie raspundere")
                })
            Spacer()
                
            }
            
        }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            
            ContentView()
        
    }
}

