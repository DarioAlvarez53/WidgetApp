import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screeen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls + tiles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

//creando una enumeracion para el RadioListTile
enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = false;

  //Propiedad para RadioListTile
  Transportation selectedTransportation = Transportation.car;

  //Creando propiedades para el CheckboxListTile
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Ad duis veniam est ipsum ut aliqua voluptate velit ex occaecat Lorem mollit qui.'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              })
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Lorem cupidatat dolor aute proident Lorem id consectetur dolor pariatur cupidatat labore anim.'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Irure nisi est veniam ullamco labore magna ex sunt id ut id laboris ex sit.'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Ullamco amet incididunt proident irure eu minim est culpa incididunt.'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              })
            ),
          ],
        ),
      
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}