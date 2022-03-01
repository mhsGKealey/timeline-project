//
//  CalendarViewController.swift
//  Timeline
//
//  Created by Si Chen on 2022-01-06.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDelegate {

    var calendar = FSCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        calendar.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendar.frame = CGRect(x: 0,
                                y: view.safeAreaInsets.top,
                                width: view.width,
                                height: view.height-300)
        view.addSubview(calendar)

    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-DDD-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
        }
}
