import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff1E5BFF),
        title: const Text("Doctor Profile"),
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage('assets/youssef.png'),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "DR. Youssef ELmay",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1E5BFF),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Eye Special",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.orange, size: 18),
                            SizedBox(width: 4),
                            Text("3"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      _CallIcon(icon: Icons.call),
                      const SizedBox(height: 10),
                      _CallIcon(icon: Icons.phone),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// About
            _SectionTitle("About"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Professor of Eye Special – Former Head of Department of Eye Special.",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 16),

            /// Info Card
            _InfoCard(
              children: const [
                _InfoRow(
                  icon: Icons.local_hospital,
                  text: "Faraskor Medical Center",
                ),
                _InfoRow(
                  icon: Icons.access_time,
                  text: "10 - 19",
                ),
                _InfoRow(
                  icon: Icons.location_on,
                  text: "Faraskor, Dammitta, Egypt",
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Contact Info
            _SectionTitle("Contact Info"),
            _InfoCard(
              children: const [
                _InfoRow(
                  icon: Icons.phone,
                  text: "01005771674",
                ),
                _InfoRow(
                  icon: Icons.phone,
                  text: "01095771016",
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline),
                      label: const Text("Chat With Dr. Youssef"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1E5BFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Book an Appointment"),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

/// ---------- Components ----------

class _CallIcon extends StatelessWidget {
  final IconData icon;
  const _CallIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xffEAF0FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: const Color(0xff1E5BFF), size: 20),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final List<Widget> children;
  const _InfoCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        color: const Color(0xffEAF0FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff1E5BFF)),
          const SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
