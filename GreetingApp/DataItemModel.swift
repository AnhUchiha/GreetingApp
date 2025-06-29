import SwiftUI

struct DataItemModel: Identifiable {
    let id =  UUID()
    var text: LocalizedStringKey
    var colorText: Color
}
