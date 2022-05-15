import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  int currentSelect = 0;
  int currentSelectBed = 0;
  int currentSelectBath = 0;
  int currentFurnish = 0;
  int lowRange = 0;
  int highRange = 0;
  int sqft = 0;

  String dropdownvalue = 'Price Monthly';
  // List of items in our dropdown menu
  var items = [
    'Price Monthly',
    'Price Yearly',
  ];
  RangeValues values = const RangeValues(1, 100000);
  RangeLabels labels = const RangeLabels('1', "100000");
  RangeValues valuesSize = const RangeValues(1, 100000);
  RangeLabels labelsSize = const RangeLabels('1', "100000");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Stack(
          children: [
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close)),
                    const Text(
                      'Filter',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) =>
                              const Color.fromARGB(255, 255, 135, 7),
                        ),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Reset",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Property Type',
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 71, 71),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(28, 0, 0, 0),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      propertyType('Any', 0),
                      const SizedBox(
                        width: 16,
                      ),
                      propertyType('Apartment', 1),
                      const SizedBox(
                        width: 16,
                      ),
                      propertyType('Townhouse', 3),
                      const SizedBox(
                        width: 16,
                      ),
                      propertyType('Whole Building', 4),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                      hint: const Text(
                        'Range',
                        style: TextStyle(color: Colors.black),
                      ),
                      // Initial Value
                      value: dropdownvalue, elevation: 0,
                      borderRadius: BorderRadius.circular(10),
                      dropdownColor: const Color.fromARGB(255, 255, 255, 255),

                      // Down Arrow Icon
                      icon: const Icon(Icons.arrow_drop_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    Text(
                      "₦$lowRange -₦$highRange",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                RangeSlider(
                  divisions: 1000,
                  activeColor: const Color.fromARGB(255, 79, 150, 221),
                  inactiveColor: const Color.fromARGB(255, 186, 224, 255),
                  min: 1,
                  max: 100000,
                  values: values,
                  // labels: labels,
                  onChanged: (value) {
                    print("START: ${value.start}, End: ${value.end}");
                    setState(() {
                      values = value;
                      labels = RangeLabels("₦${value.start.toInt().toString()}",
                          "₦${value.end.toInt().toString()}");
                      lowRange = value.start.toInt();
                      highRange = value.end.toInt();
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(28, 0, 0, 0),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Bedrooms',
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 71, 71),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      numberOfBedrooms('Studio', 0),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBedrooms('1', 1),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBedrooms('2', 2),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBedrooms('3', 3),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBedrooms('4', 4),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBedrooms('5', 5),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 25,
                  color: Color.fromARGB(28, 0, 0, 0),
                ),
                const Text(
                  'Bathrooms',
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 71, 71),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      numberOfBathrooms('Studio', 0),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBathrooms('1', 1),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBathrooms('2', 2),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBathrooms('3', 3),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBathrooms('4', 4),
                      const SizedBox(
                        width: 16,
                      ),
                      numberOfBathrooms('5', 5),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 25,
                  color: Color.fromARGB(28, 0, 0, 0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Property Size',
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 71, 71),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Up to $sqft sqft",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                RangeSlider(
                  divisions: 1000,
                  activeColor: const Color.fromARGB(255, 79, 150, 221),
                  inactiveColor: const Color.fromARGB(255, 186, 224, 255),
                  min: 1,
                  max: 100000,
                  values: valuesSize,
                  // labels: labelsSize,
                  onChanged: (state) {
                    setState(() {
                      valuesSize = state;
                      labelsSize = RangeLabels(state.start.toInt().toString(),
                          state.end.toInt().toString());
                      sqft = state.end.toInt();
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 25,
                  color: Color.fromARGB(28, 0, 0, 0),
                ),
                const Text(
                  'Furnishing',
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 71, 71),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      furnishing('Any', 1),
                      const SizedBox(
                        width: 16,
                      ),
                      furnishing('Furnished', 2),
                      const SizedBox(
                        width: 16,
                      ),
                      furnishing('Unfurnished', 3),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) =>
                          const Color.fromARGB(255, 34, 119, 189),
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const RootApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Show Properties",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget propertyType(String type, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          currentSelect = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Container(
          height: 40,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color: currentSelect == index ? Colors.lightBlue : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(106, 0, 0, 0).withOpacity(0.1),
                blurStyle: BlurStyle.solid,
                spreadRadius: 0.5,
                blurRadius: 0.5,
              ),
            ],
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: currentSelect == index ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget numberOfBedrooms(String type, int indexBed) {
    return InkWell(
      onTap: () {
        setState(() {
          currentSelectBed = indexBed;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Container(
          height: 40,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color:
                currentSelectBed == indexBed ? Colors.lightBlue : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(106, 0, 0, 0).withOpacity(0.1),
                blurStyle: BlurStyle.solid,
                spreadRadius: 0.5,
                blurRadius: 0.5,
              ),
            ],
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: currentSelectBed == indexBed
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget numberOfBathrooms(String type, int indexBath) {
    return InkWell(
      onTap: () {
        setState(() {
          currentSelectBath = indexBath;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Container(
          height: 40,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color: currentSelectBath == indexBath
                ? Colors.lightBlue
                : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(106, 0, 0, 0).withOpacity(0.1),
                blurStyle: BlurStyle.solid,
                spreadRadius: 0.5,
                blurRadius: 0.5,
              ),
            ],
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: currentSelectBath == indexBath
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget furnishing(String type, int indexFurnish) {
    return InkWell(
      onTap: () {
        setState(() {
          currentFurnish = indexFurnish;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Container(
          height: 40,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color: currentFurnish == indexFurnish
                ? Colors.lightBlue
                : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(106, 0, 0, 0).withOpacity(0.1),
                blurStyle: BlurStyle.solid,
                spreadRadius: 0.5,
                blurRadius: 0.5,
              ),
            ],
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: currentFurnish == indexFurnish
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
