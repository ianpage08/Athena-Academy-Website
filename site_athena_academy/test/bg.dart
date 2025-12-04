// light_background.dart
import 'dart:ui';
import 'package:flutter/material.dart';

/// LightHeroBackground
/// -------------------
/// Fundo claro, suave e com blobs/gradientes - estilo "versão 1".
/// - `intensity` controla a força/contraste do fundo (0.0..2.0).
/// - `showNoise` ativa uma camada leve de "noise" (recomendada).
///
/// Uso:
/// Stack(
///   children: [
///     LightHeroBackground(intensity: 1.0),
///     // seu conteúdo por cima
///   ],
/// )
class LightHeroBackground extends StatelessWidget {
  final double intensity;
  final bool showNoise;

  const LightHeroBackground({
    Key? key,
    this.intensity = 1.0,
    this.showNoise = true,
  })  : assert(intensity >= 0.0 && intensity <= 2.5),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // Normaliza a intensidade para usos fáceis:
    final clamp = (double v, double min, double max) {
      if (v < min) return min;
      if (v > max) return max;
      return v;
    };

    final double i = clamp(intensity, 0.0, 2.5);

    return SizedBox.expand(
      child: Stack(
        children: [
          // 1) Base gradient (fundo principal)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.9, -0.6),
                end: Alignment(0.9, 0.6),
                colors: [
                  // blend das cores claras (ajustado pela intensidade)
                  Color.lerp(const Color(0xFFEAF2FF), const Color(0xFFDCE9FF), 0.2 * i) ??
                      const Color(0xFFEAF2FF),
                  Color.lerp(const Color(0xFFF6F9FF), const Color(0xFFEFF6FF), 0.2 * i) ??
                      const Color(0xFFF6F9FF),
                ],
              ),
            ),
          ),

          // 2) Big blob (esquerda superior)
          Positioned(
            left: -120,
            top: -80,
            child: _Blob(
              size: 540,
              colors: [
                (Colors.purple.shade100).withOpacity(0.6 * i),
                Colors.transparent,
              ],
              blurSigma: 40,
              opacity: 0.9 * (0.6 + 0.4 * (i.clamp(0.0, 1.0))),
            ),
          ),

          // 3) Big blue blob (direita inferior)
          Positioned(
            right: -140,
            bottom: -60,
            child: _Blob(
              size: 560,
              colors: [
                (Colors.blue.shade200).withOpacity(0.55 * i),
                Colors.transparent,
              ],
              blurSigma: 48,
              opacity: 0.95 * (0.5 + 0.5 * (i.clamp(0.0, 1.0))),
            ),
          ),

          // 4) Subtle soft radial near center to lift midtones
          Center(
            child: IgnorePointer(
              child: Container(
                width: 900,
                height: 500,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: const Alignment(-0.4, -0.2),
                    radius: 1.1,
                    colors: [
                      Colors.white.withOpacity(0.06 * i),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 1.0],
                  ),
                ),
              ),
            ),
          ),

          // 5) Light vignette to keep edges softer (scale by intensity)
          IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(0.0, -0.2),
                  radius: 1.1,
                  colors: [
                    Colors.black.withOpacity(0.02 * (i)), // muito sutil
                    Colors.transparent,
                  ],
                  stops: const [0.95, 1.0],
                ),
              ),
            ),
          ),

          // 6) Optional grain/noise overlay (subtile)
          if (showNoise)
            Positioned.fill(
              child: Opacity(
                opacity: 0.06 * i, // controle da força do noise
                child: _NoiseLayer(),
              ),
            ),

          // 7) A final soft white glaze to slightly "lift" the design (glass feel)
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.015 * i),
            ),
          ),
        ],
      ),
    );
  }
}

/// _Blob
/// Pequeno helper que desenha um círculo com gradiente e aplica um blur
class _Blob extends StatelessWidget {
  final double size;
  final List<Color> colors;
  final double blurSigma;
  final double opacity;

  const _Blob({
    Key? key,
    required this.size,
    required this.colors,
    this.blurSigma = 30,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // O blur é simulado por BackdropFilter + uma camada sem conteúdo por cima do blob.
    // Note: BackdropFilter blura o fundo POR TRÁS do filtro — mas aqui o efeito visual
    // de "soft blob" fica bom combinando um Container com borda gradiente + uma máscara.
    return Opacity(
      opacity: opacity,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.8,
            colors: colors,
          ),
        ),
        child: ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

/// _NoiseLayer
/// Uma camada simples que usa um CustomPainter para "pintar" ruído sutil.
/// É leve; se quiser ainda mais realismo, troque por uma imagem PNG de noise com BlendMode.multiply.
class _NoiseLayer extends StatelessWidget {
  const _NoiseLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _NoisePainter(),
      size: Size.infinite,
    );
  }
}

class _NoisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final rnd = _FastRandom(12345);

    // desenha pontos muito pequenos distribuídos, baixa opacidade
    for (int i = 0; i < (size.width * size.height / 50000).round(); i++) {
      final x = rnd.nextDouble() * size.width;
      final y = rnd.nextDouble() * size.height;
      final a = 0.08 + rnd.nextDouble() * 0.06; // varia opacidade
      paint.color = Colors.black.withOpacity(a * 0.02);
      final r = 0.3 + rnd.nextDouble() * 1.2;
      canvas.drawCircle(Offset(x, y), r, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Gerador de números pseudoaleatórios muito leve (determinístico).
class _FastRandom {
  int _seed;
  _FastRandom(this._seed);

  double nextDouble() {
    // simples LCG
    _seed = (1103515245 * _seed + 12345) & 0x7fffffff;
    return (_seed / 0x7fffffff);
  }
}
