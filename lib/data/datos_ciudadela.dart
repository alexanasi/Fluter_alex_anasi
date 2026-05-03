final Map<String, dynamic> residente = {
  'nombre': 'Alex Anasi',
  'vivienda': 'Villa 12',
  'ciudadela': 'Ciudadela Balcón del Valle',
};

final Map<String, dynamic> alicuotaMensual = {
  'mes': 'Mayo 2026',
  'valor': 45.00,
  'estado': 'Pagado',
  'fechaPago': '02/05/2026',
  'metodoPago': 'Transferencia bancaria',
  'observacion': 'Alícuota mensual cancelada correctamente.',
};

final List<Map<String, dynamic>> historialAlicuotas = [
  {'mes': 'Enero 2026', 'estado': 'Pagado', 'valor': 45.00},
  {'mes': 'Febrero 2026', 'estado': 'Pagado', 'valor': 45.00},
  {'mes': 'Marzo 2026', 'estado': 'Pagado', 'valor': 45.00},
  {'mes': 'Abril 2026', 'estado': 'Pagado', 'valor': 45.00},
  {'mes': 'Mayo 2026', 'estado': 'Pagado', 'valor': 45.00},
];

final List<Map<String, dynamic>> espaciosComunes = [
  {
    'nombre': 'Cancha deportiva',
    'estado': 'Disponible',
    'horario': '08:00 - 10:00',
    'capacidad': 20,
    'descripcion': 'Espacio para fútbol, vóley y actividades deportivas.',
  },
  {
    'nombre': 'Salón comunal',
    'estado': 'Reservado',
    'horario': '15:00 - 18:00',
    'capacidad': 50,
    'descripcion': 'Área para reuniones familiares y eventos de residentes.',
  },
  {
    'nombre': 'Área BBQ',
    'estado': 'Disponible',
    'horario': '11:00 - 13:00',
    'capacidad': 12,
    'descripcion': 'Zona de parrilla para actividades sociales.',
  },
  {
    'nombre': 'Piscina',
    'estado': 'Disponible',
    'horario': '09:00 - 12:00',
    'capacidad': 25,
    'descripcion': 'Área recreativa para residentes y visitantes autorizados.',
  },
];
