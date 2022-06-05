//
//  explore.swift
//  PrEP Reminder
//
//  Created by Mason Boyles on 6/4/22.
//

import SwiftUI

struct explore: View {
    var body: some View {
        VStack {
        Text("Helpful links:");
            List {
                
                Link("Should you be taking PrEP",
                     destination: URL(string: "https://www.cdc.gov/hiv/basics/prep/prep-decision.html")!);
                Link("How you can pay for PrEP",
                     destination: URL(string: "https://www.cdc.gov/hiv/basics/prep/paying-for-prep/index.html")!);
                Link("How to Take PrEP",
                     destination: URL(string: "https://www.cdc.gov/hiv/basics/prep/about-prep.html")!);
                Link("Effectiveness of PrEP",
                     destination: URL(string: "https://www.cdc.gov/hiv/basics/prep/prep-effectiveness.html")!);
                Link("Contact a Professional",
                     destination: URL(string: "https://www.aidatlanta.org/prep/")!)
            }
        }
    }
}

struct explore_Previews: PreviewProvider {
    static var previews: some View {
        explore()
    }
}
