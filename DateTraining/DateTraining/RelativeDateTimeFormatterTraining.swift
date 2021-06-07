//
//  RelativeDateTimeFormatterTraining.swift
//  DateTraining
//
//  Created by 岡優志 on 2021/06/06.
//

import SwiftUI

struct RelativeDateTimeFormatterTraining: View {
    @State var timeText = ""
    var body: some View {
        VStack{
            Button(action: {
                let dateFormat = DateFormatter()
                // 日時をString型で定義
                let textLogDate = "2021-01-01 12:00:00"
                let textNowDate = "2021-01-01 12:05:40"
                // dateFormatを初期設定した"2021-01-01 12:00:00"と同じ形式になるように定義
                dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
                // timeZoneを日本に
                dateFormat.timeZone = TimeZone(identifier: "Asia/Tokyo")
                // String型の日時をDate型に変換
                let logDate = dateFormat.date(from: textLogDate) ?? Date()
                let nowDate = dateFormat.date(from: textNowDate) ?? Date()
                // timeIntervalSinceを使用すると差分を取得できる->nowDate-logDate
                let dateSubtraction: TimeInterval = logDate.timeIntervalSince(nowDate)
                let formatter = RelativeDateTimeFormatter()
                formatter.unitsStyle = .abbreviated
                formatter.locale = Locale(identifier: "ja-JP")
                timeText = formatter.localizedString(fromTimeInterval: dateSubtraction)
                print(timeText)
            }, label: {
                Text("Button")
            })
            Text(timeText)
        }
    }
}

struct RelativeDateTimeFormatterTraining_Previews: PreviewProvider {
    static var previews: some View {
        RelativeDateTimeFormatterTraining()
    }
}
