import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFA),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),

                    const Divider(height: 1),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Olá, família do Lucas ☀',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF073B44),
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Que bom ter vocês aqui. Vamos cuidar de\nmais uma fase?',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.6,
                              color: Color(0xFF6B7F83),
                            ),
                          ),

                          const SizedBox(height: 26),

                          _buildMainCard(),

                          const SizedBox(height: 30),

                          _buildGrowthHeader(),

                          const SizedBox(height: 10),

                          const Text(
                            'Últimas medidas · 15 de março de 2025',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF7B8C8F),
                            ),
                          ),

                          const SizedBox(height: 16),

                          Row(
                            children: [
                              Expanded(
                                child: _buildInfoCard(
                                  icon: Icons.monitor_weight_outlined,
                                  iconColor: const Color(0xFF00A78E),
                                  iconBackground: const Color(0xFFDDF7F0),
                                  title: 'Peso',
                                  value: '18,6',
                                  unit: 'kg',
                                  footer: 'Último registro',
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: _buildInfoCard(
                                  icon: Icons.straighten,
                                  iconColor: const Color(0xFF2196D3),
                                  iconBackground: const Color(0xFFDCEFFA),
                                  title: 'Altura',
                                  value: '109',
                                  unit: 'cm',
                                  footer: 'Último registro',
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: _buildInfoCard(
                                  icon: Icons.monitor_heart_outlined,
                                  iconColor: const Color(0xFFF18B2B),
                                  iconBackground: const Color(0xFFFFF0D9),
                                  title: 'IMC',
                                  value: '15,6',
                                  unit: '',
                                  footer: 'Índice de massa\ncorporal',
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 26),

                          _buildVaccinesTitle(),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            _buildBottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          const Icon(Icons.eco_outlined, size: 32, color: Color(0xFF009688)),

          const SizedBox(width: 8),

          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Fase',
                  style: TextStyle(
                    color: Color(0xFF073B44),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Viva',
                  style: TextStyle(
                    color: Color(0xFF009688),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          const Icon(Icons.notifications_none, color: Color(0xFF073B44)),

          const SizedBox(width: 16),

          const CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFFE0E0E0),
            child: Icon(Icons.person, color: Color(0xFF557575)),
          ),
        ],
      ),
    );
  }

  Widget _buildMainCard() {
    return Container(
      width: double.infinity,
      height: 255,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE4F6E5), Color(0xFFD7EFCF)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -30,
            bottom: -10,
            child: Icon(
              Icons.park,
              size: 180,
              color: Colors.green.withValues(alpha: 0.14),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.eco_outlined, size: 16, color: Color(0xFF009688)),
                  SizedBox(width: 6),
                  Text(
                    'CRESCENDO COM CARINHO',
                    style: TextStyle(
                      color: Color(0xFF009688),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                'Pequenas\ndescobertas.\nGrandes conquistas.',
                style: TextStyle(
                  color: Color(0xFF073B44),
                  fontSize: 24,
                  height: 1.18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Lucas está construindo sua própria\nhistória. Vamos acompanhar cada passo\njuntos.',
                style: TextStyle(
                  fontSize: 12,
                  height: 1.55,
                  color: Color(0xFF355E62),
                ),
              ),

              const Spacer(),

              Row(
                children: const [
                  Text(
                    'Explorar esta fase',
                    style: TextStyle(
                      color: Color(0xFF009688),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xFF009688),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGrowthHeader() {
    return Row(
      children: [
        const Icon(Icons.bar_chart, color: Color(0xFF009688), size: 24),

        const SizedBox(width: 10),

        const Text(
          'Crescendo a cada dia',
          style: TextStyle(
            color: Color(0xFF073B44),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const Spacer(),

        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text(
                'Ver histórico',
                style: TextStyle(color: Color(0xFF009688), fontSize: 13),
              ),
              SizedBox(width: 6),
              Icon(Icons.arrow_forward_ios, size: 13, color: Color(0xFF009688)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBackground,
    required String title,
    required String value,
    required String unit,
    required String footer,
  }) {
    return Container(
      height: 175,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFD9E4E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(icon, color: iconColor, size: 21),
          ),

          const SizedBox(height: 16),

          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Color(0xFF71878B)),
          ),

          const SizedBox(height: 8),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF073B44),
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (unit.isNotEmpty) ...[
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    unit,
                    style: const TextStyle(
                      color: Color(0xFF073B44),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ],
          ),

          const Spacer(),

          Text(
            footer,
            style: const TextStyle(
              fontSize: 9,
              height: 1.4,
              color: Color(0xFF819295),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVaccinesTitle() {
    return Row(
      children: [
        const Icon(Icons.vaccines_outlined, color: Color(0xFF009688)),

        const SizedBox(width: 10),

        const Text(
          'Vacinas para ficar de olho',
          style: TextStyle(
            color: Color(0xFF073B44),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),

        const Spacer(),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF0D9),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            '2 pendentes',
            style: TextStyle(color: Color(0xFFE77817), fontSize: 11),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFDCE5E4))),
      ),
      child: Row(
        children: [
          _bottomItem(
            icon: Icons.home_outlined,
            label: 'Visão geral',
            selected: true,
          ),
          _bottomItem(
            icon: Icons.calendar_month_outlined,
            label: 'Linha do tempo',
          ),
          _bottomItem(icon: Icons.bar_chart_outlined, label: 'Crescimento'),
        ],
      ),
    );
  }

  Widget _bottomItem({
    required IconData icon,
    required String label,
    bool selected = false,
  }) {
    return Expanded(
      child: Container(
        color: selected ? const Color(0xFFE1F6EF) : Colors.white,
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 22,
                color: selected
                    ? const Color(0xFF009688)
                    : const Color(0xFF73888B),
              ),

              const SizedBox(height: 5),

              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  color: selected
                      ? const Color(0xFF009688)
                      : const Color(0xFF73888B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
