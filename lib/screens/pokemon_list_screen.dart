// import 'package:flutter/material.dart';
// import '../models/pokemon.dart';
// import '../services/pokemon_service.dart';

// /// หน้าจอแสดงรายการ Pokemon
// class PokemonListScreen extends StatefulWidget {
//   const PokemonListScreen({super.key});

//   @override
//   State<PokemonListScreen> createState() => _PokemonListScreenState();
// }

// class _PokemonListScreenState extends State<PokemonListScreen> {
//   // สร้าง instance ของ service
//   final PokemonService _pokemonService = PokemonService();

//   // เก็บรายการ Pokemon
//   List<Pokemon> _pokemonList = [];

//   // สถานะ loading
//   bool _isLoading = true;

//   // เก็บ error message (ถ้ามี)
//   String? _errorMessage;

//   @override
//   void initState() {
//     super.initState();
//     // เรียกดึงข้อมูลตอนเปิดหน้าจอ
//     _loadPokemon();
//   }

//   /// โหลดข้อมูล Pokemon จาก API
//   Future<void> _loadPokemon() async {
//     try {
//       // เริ่ม loading
//       setState(() {
//         _isLoading = true;
//         _errorMessage = null;
//       });

//       // เรียก service เพื่อดึงข้อมูล
//       final pokemonList = await _pokemonService.getPokemonList(limit: 50);

//       // อัพเดท state ด้วยข้อมูลที่ได้
//       setState(() {
//         _pokemonList = pokemonList;
//         _isLoading = false;
//       });
//     } catch (e) {
//       // ถ้าเกิด error
//       setState(() {
//         _errorMessage = e.toString();
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('🎮 Pokemon List'),
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.white,
//         actions: [
//           // ปุ่ม refresh
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: _loadPokemon,
//           ),
//         ],
//       ),
//       body: _buildBody(),
//     );
//   }

//   /// สร้าง body ตามสถานะ
//   Widget _buildBody() {
//     // กรณี loading
//     if (_isLoading) {
//       return const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircularProgressIndicator(color: Colors.red),
//             SizedBox(height: 16),
//             Text('กำลังโหลด Pokemon...'),
//           ],
//         ),
//       );
//     }

//     // กรณี error
//     if (_errorMessage != null) {
//       return Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(Icons.error_outline, size: 64, color: Colors.red),
//             const SizedBox(height: 16),
//             Text(
//               'เกิดข้อผิดพลาด',
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             const SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 32),
//               child: Text(
//                 _errorMessage!,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(color: Colors.grey),
//               ),
//             ),
//             const SizedBox(height: 24),
//             ElevatedButton.icon(
//               onPressed: _loadPokemon,
//               icon: const Icon(Icons.refresh),
//               label: const Text('ลองใหม่'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 foregroundColor: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       );
//     }

//     // กรณีโหลดสำเร็จ - แสดง ListView
//     return RefreshIndicator(
//       onRefresh: _loadPokemon,
//       color: Colors.red,
//       child: ListView.builder(
//         padding: const EdgeInsets.all(8),
//         itemCount: _pokemonList.length,
//         itemBuilder: (context, index) {
//           final pokemon = _pokemonList[index];
//           return _buildPokemonCard(pokemon);
//         },
//       ),
//     );
//   }

//   /// สร้าง Card สำหรับแต่ละ Pokemon
//   Widget _buildPokemonCard(Pokemon pokemon) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ListTile(
//         contentPadding: const EdgeInsets.all(8),
//         leading: Hero(
//           tag: 'pokemon-${pokemon.id}',
//           child: Container(
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//               color: Colors.grey[100],
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Image.network(
//               pokemon.imageUrl,
//               fit: BoxFit.contain,
//               loadingBuilder: (context, child, loadingProgress) {
//                 if (loadingProgress == null) return child;
//                 return const Center(
//                   child: CircularProgressIndicator(
//                     strokeWidth: 2,
//                     color: Colors.red,
//                   ),
//                 );
//               },
//               errorBuilder: (context, error, stackTrace) {
//                 return const Icon(
//                   Icons.catching_pokemon,
//                   size: 40,
//                   color: Colors.grey,
//                 );
//               },
//             ),
//           ),
//         ),
//         title: Text(
//           // แปลงตัวอักษรแรกเป็นตัวใหญ่
//           pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         subtitle: Text(
//           '#${pokemon.id.toString().padLeft(3, '0')}',
//           style: TextStyle(
//             color: Colors.grey[600],
//             fontSize: 14,
//           ),
//         ),
//         trailing: const Icon(
//           Icons.arrow_forward_ios,
//           size: 16,
//           color: Colors.grey,
//         ),
//         onTap: () {
//           // แสดง dialog ข้อมูล Pokemon
//           showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text(pokemon.name.toUpperCase()),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Image.network(
//                     pokemon.imageUrl,
//                     height: 150,
//                   ),
//                   const SizedBox(height: 16),
//                   Text('Pokemon #${pokemon.id}'),
//                 ],
//               ),
//               actions: [
//                 TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text('ปิด'),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//2
import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../services/pokemon_service.dart';
import '../services/dio_pokemon_service.dart';
import 'pokemon_detail_screen.dart';
/// หน้าจอแสดงรายการ Pokemon
/// สามารถสลับระหว่าง HTTP และ Dio ได้
class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  // Services ทั้งสองแบบ
  final PokemonService _httpService = PokemonService();
  final DioPokemonService _dioService = DioPokemonService();

  // สลับระหว่าง http และ dio
  bool _useDio = false;

  List<Pokemon> _pokemonList = [];
  bool _isLoading = true;
  String? _errorMessage;

  // เก็บเวลาที่ใช้โหลด
  Duration? _loadTime;

  @override
  void initState() {
    super.initState();
    _loadPokemon();
  }

  Future<void> _loadPokemon() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    // จับเวลาเริ่มต้น
    final stopwatch = Stopwatch()..start();

    try {
      List<Pokemon> pokemonList;

      if (_useDio) {
        // ใช้ Dio
        pokemonList = await _dioService.getPokemonList(limit: 50);
      } else {
        // ใช้ HTTP
        pokemonList = await _httpService.getPokemonList(limit: 50);
      }

      // หยุดจับเวลา
      stopwatch.stop();

      setState(() {
        _pokemonList = pokemonList;
        _isLoading = false;
        _loadTime = stopwatch.elapsed;
      });
    } catch (e) {
      stopwatch.stop();
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
        _loadTime = stopwatch.elapsed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_useDio ? '🚀 Pokemon (Dio)' : '📡 Pokemon (HTTP)'),
        backgroundColor: _useDio ? Colors.blue : Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadPokemon,
          ),
        ],
      ),
      body: Column(
        children: [
          // Toggle switch
          _buildToggleCard(),

          // Main content
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildToggleCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HTTP',
                style: TextStyle(
                  fontWeight: !_useDio ? FontWeight.bold : FontWeight.normal,
                  color: !_useDio ? Colors.red : Colors.grey,
                ),
              ),
              Switch(
                value: _useDio,
                onChanged: (value) {
                  setState(() {
                    _useDio = value;
                  });
                  _loadPokemon();
                },
                activeColor: Colors.blue,
                inactiveThumbColor: Colors.red,
              ),
              Text(
                'Dio',
                style: TextStyle(
                  fontWeight: _useDio ? FontWeight.bold : FontWeight.normal,
                  color: _useDio ? Colors.blue : Colors.grey,
                ),
              ),
            ],
          ),
          if (_loadTime != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '⏱️ โหลดใช้เวลา: ${_loadTime!.inMilliseconds} ms',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: _useDio ? Colors.blue : Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'กำลังโหลดด้วย ${_useDio ? "Dio" : "HTTP"}...',
            ),
          ],
        ),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: _useDio ? Colors.blue : Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'เกิดข้อผิดพลาด',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                _errorMessage!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _loadPokemon,
              icon: const Icon(Icons.refresh),
              label: const Text('ลองใหม่'),
              style: ElevatedButton.styleFrom(
                backgroundColor: _useDio ? Colors.blue : Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _loadPokemon,
      color: _useDio ? Colors.blue : Colors.red,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _pokemonList.length,
        itemBuilder: (context, index) {
          final pokemon = _pokemonList[index];
          return _buildPokemonCard(pokemon);
        },
      ),
    );
  }

  Widget _buildPokemonCard(Pokemon pokemon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.network(
            pokemon.imageUrl,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: _useDio ? Colors.blue : Colors.red,
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.catching_pokemon, size: 40, color: Colors.grey);
            },
          ),
        ),
        title: Text(
          pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          '#${pokemon.id.toString().padLeft(3, '0')}',
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: _useDio ? Colors.blue : Colors.red,
        ),
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PokemonDetailScreen(pokemon: pokemon),
    ),
  );
},
      ),
    );
  }
}
