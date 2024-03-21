import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeUi extends StatelessWidget {
  final String username;
  final String email;

const HomeUi({super.key,
required this.username,required this.email
});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage( "https://images.unsplash.com/photo-1533035353720-f1c6a75cd8ab?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNvY2lhbCUyMG1lZGlhJTIwaG9tZSUyMHNjcmVlbSUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D"
              ),
              fit: BoxFit.cover,
              ),

          ),
          child: Column(
            children: [
              const Gap(50),
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fHww'),

              ),
              const Gap(15),
              Text(username,style: 
              const TextStyle(color: Colors.black,
              fontSize: 16,
              ),
              ),
              const Gap(5),
              Text(email,style: const TextStyle(
                color: Colors.black, fontSize: 20,
              ),)
           
            ],
          ),

        )),
    
      

    );
  }
}