import 'package:fl_chart/fl_chart.dart';
import 'package:home_service/Common/all_import.dart';

class BarChartContainer extends StatelessWidget {
  const BarChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return AspectRatio(
      aspectRatio: 1.5,
      child: BarChart(
        BarChartData(
          maxY: 50,
          barTouchData: BarTouchData(),
          titlesData: const FlTitlesData(
            leftTitles: AxisTitles(
                sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
            topTitles: AxisTitles(
                sideTitles: SideTitles(reservedSize: 30, showTitles: false)),
            rightTitles: AxisTitles(
                sideTitles: SideTitles(reservedSize: 44, showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(reservedSize: 30, showTitles: true)),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          gridData: const FlGridData(
            drawVerticalLine: false,
          ),
          extraLinesData: ExtraLinesData(horizontalLines: [
            HorizontalLine(
                y: 0,
                color: appColors.transactionText,
                dashArray: [8],
                strokeWidth: scalingQuery.moderateScale(0.8))
          ]),
          barGroups: [

            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 20,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                    toY: 30,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                    toY: 25,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                    toY: 35,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                    toY: 20,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                    toY: 30,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
            BarChartGroupData(
              x: 7,
              barRods: [
                BarChartRodData(
                    toY: 25,
                    color: appColors.btnColor,
                    width: scalingQuery.scale(15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
