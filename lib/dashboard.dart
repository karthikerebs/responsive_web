import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_web/drawer.dart';
import 'package:responsive_web/navbar.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Sales Analytics',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2))
                  ],
                ),
                child: SizedBox(
                  height: 400,
                  child: LineChart(LineChartData(
                    gridData: const FlGridData(show: true),
                    titlesData: const FlTitlesData(show: true),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(1, 3),
                          FlSpot(2, 1),
                          FlSpot(3, 4),
                          FlSpot(4, 3),
                          FlSpot(5, 5),
                          FlSpot(6, 4),
                          FlSpot(7, 3),
                        ],
                        isCurved: true,
                        color: Colors.blue,
                        barWidth: 4,
                        belowBarData: BarAreaData(
                          show: true,
                          color: Colors.blue.withOpacity(0.5),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'User Statistics',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2))
                  ],
                ),
                child: SizedBox(
                  height: 300,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          value: 40,
                          title: 'Active Users',
                          color: Colors.blue,
                          radius: 50,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          value: 30,
                          title: 'Inactive Users',
                          color: Colors.red,
                          radius: 50,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          value: 30,
                          title: 'New Users',
                          color: Colors.green,
                          radius: 50,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Recent Orders',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              const RecentOrdersTable(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentOrdersTable extends StatelessWidget {
  const RecentOrdersTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 2))
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(
                label: Text('Order ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Customer Name',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Date',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Status',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Total',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1001', style: TextStyle(fontSize: 16))),
              DataCell(Text('John Doe', style: TextStyle(fontSize: 16))),
              DataCell(Text('2023-07-01', style: TextStyle(fontSize: 16))),
              DataCell(Text('Delivered', style: TextStyle(fontSize: 16))),
              DataCell(Text('\$100.00', style: TextStyle(fontSize: 16))),
            ]),
            DataRow(cells: [
              DataCell(Text('1002', style: TextStyle(fontSize: 16))),
              DataCell(Text('Jane Smith', style: TextStyle(fontSize: 16))),
              DataCell(Text('2023-07-02', style: TextStyle(fontSize: 16))),
              DataCell(Text('Processing', style: TextStyle(fontSize: 16))),
              DataCell(Text('\$150.00', style: TextStyle(fontSize: 16))),
            ]),
            DataRow(cells: [
              DataCell(Text('1003', style: TextStyle(fontSize: 16))),
              DataCell(Text('Sam Wilson', style: TextStyle(fontSize: 16))),
              DataCell(Text('2023-07-03', style: TextStyle(fontSize: 16))),
              DataCell(Text('Cancelled', style: TextStyle(fontSize: 16))),
              DataCell(Text('\$200.00', style: TextStyle(fontSize: 16))),
            ]),
          ],
        ),
      ),
    );
  }
}
