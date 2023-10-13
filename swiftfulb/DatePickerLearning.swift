//
//  DatePickerLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 12/10/2023.
//

import SwiftUI

struct DatePickerLearning: View {
    @State var selectedDate: Date = .init()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    let endingDate: Date = .init()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()

        formatter.dateStyle = .medium
        formatter.timeStyle = .short

        return formatter
    }

    var body: some View {
        VStack {
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate)).font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            //        DatePicker("Select a date", selection: $selectedDate)
            //        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [
            //            .date, .hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate ... endingDate)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //                GraphicalDatePickerStyle()
                    //                WheelDatePickerStyle()
                )
        }
    }
}

#Preview {
    DatePickerLearning()
}
