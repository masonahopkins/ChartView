import SwiftUI

/// A type of chart that displays a line connecting the data points
public struct LineChart: View, ChartBase {
    public var chartData = ChartData()

    @EnvironmentObject var data: ChartData
    @EnvironmentObject var style: ChartStyle
    var showBackground: Bool

	/// The content and behavior of the `LineChart`.
	///
	///
    public var body: some View {
        Line(chartData: data, showBackground: showBackground, style: style)
    }
    
    public init(showBackground: Bool = true) {
        self.showBackground = showBackground
    }
}
