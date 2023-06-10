import Foundation
protocol AlarmDelegate: AnyObject {
    func alarmDidRing()
}
class AlarmClock {
    weak var delegate: AlarmDelegate?
    func ringAlarm() {
        print("будильник сработал!")
        delegate?.alarmDidRing()
    }
}
class ViewController: AlarmDelegate {
    var alarm: AlarmClock
    init(alarm: AlarmClock) {
        self.alarm = alarm
        alarm.delegate = self
    }
    func alarmDidRing() {
        print("получено сообщение: будильник сработал!")
    }
}
let result = AlarmClock()
let main = ViewController(alarm: result)
main.alarmDidRing()
