//
//  ReadAViewSizeDemo.swift
//  FivestarKeyBoardAvoidanceDemo
//
//  Created by Terry Kuo on 2022/4/28.
//

import SwiftUI

struct ReadAViewSizeDemo: View {
    var body: some View {
        Circle()
            .background(
              GeometryReader { geometryProxy in
                  Color.clear
                      .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
                // Use geometryProxy to get childView space information here.
              }
            )
            .onPreferenceChange(SizePreferenceKey.self) { newSize in
                print("The new Child size is: \(newSize)")
            }
    }
}

struct ReadAViewSizeDemo_Previews: PreviewProvider {
    static var previews: some View {
        ReadAViewSizeDemo()
    }
}


///PreferenceKey is SwiftUI's way to pass information "up" on the view tree.
///PreferenceKey is a generic protocol that requires one static function and one static default value:
///defaultValue is the value used when a view has no explicit value for this key
///reduce(value:nextValue:) combines the key values found in the tree with a new one

struct SizePreferenceKey: PreferenceKey {
  static var defaultValue: CGSize = .zero
  static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
