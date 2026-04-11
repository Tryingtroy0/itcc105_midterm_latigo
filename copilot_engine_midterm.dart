// ASSCAT Campus AI Copilot — Logic Engine
// copilot_engine.dart
// Author: ASSCAT Supreme Student Council Tech Team
// Description: Core intent-routing logic for the Campus AI Copilot

void main() {
  // BONUS: Offline-First flag — toggle this to simulate connectivity
  bool isInternetConnected = false;

  // Simulated user intent (in the real app, this comes from voice/text input)
  String userIntent = 'check clearance';

  // --- OFFLINE-FIRST EMERGENCY CHECK ---
  if (!isInternetConnected) {
    print('');
    print('⚠️  OFFLINE MODE ACTIVATED');
    print('──────────────────────────────────────────');
    print('No internet connection detected.');
    print('Showing cached data from your last sync.');
    print('Some features may be unavailable offline.');
    print('──────────────────────────────────────────');
    print('');
  }

  // --- AI INTENT ROUTER ---
  print('🎓 ASSCAT Campus AI Copilot');
  print('Processing your request: "$userIntent"');
  print('');

  switch (userIntent.toLowerCase().trim()) {

    case 'check clearance':
      print('📋 CLEARANCE STATUS');
      print('──────────────────────────────────────────');
      if (isInternetConnected) {
        print('Fetching your live clearance records...');
        print('');
        print('✅  Library          — CLEARED');
        print('✅  Finance Office   — CLEARED');
        print('❌  Registrar        — PENDING (submit Form 137)');
        print('✅  Student Affairs  — CLEARED');
        print('');
        print('Action needed: Visit the Registrar\'s Office with your Form 137.');
        print('Office hours: Mon–Fri, 8:00 AM – 5:00 PM');
      } else {
        print('Showing cached clearance data (last synced: June 10, 2025).');
        print('');
        print('⚠️  Connect to the internet for the latest status.');
        print('Cached: 3 of 4 offices cleared as of last sync.');
      }
      break;

    case 'view schedule':
      print('📅 CLASS SCHEDULE');
      print('──────────────────────────────────────────');
      if (isInternetConnected) {
        print('Here is your schedule for this semester:');
        print('');
        print('Mon/Wed  7:30–9:00 AM  |  ITCC105 — IT Capstone  |  Room 204');
        print('Mon/Wed  9:00–10:30 AM |  MATH101 — Calculus     |  Room 101');
        print('Tue/Thu  1:00–2:30 PM  |  ENG201  — Tech Writing |  Room 305');
        print('Friday   8:00–11:00 AM |  PE102   — Sports       |  Gymnasium');
        print('');
        print('No class cancellations today. Have a great day! 🎉');
      } else {
        print('Showing your last cached schedule.');
        print('⚠️  Room assignments may have changed. Reconnect to verify.');
        print('');
        print('Cached: 4 subjects, last updated June 10, 2025.');
      }
      break;

    case 'enrollment status':
      print('📝 ENROLLMENT STATUS');
      print('──────────────────────────────────────────');
      if (isInternetConnected) {
        print('Student ID   : 2023-00421');
        print('Name         : [Student Name]');
        print('Status       : ✅ OFFICIALLY ENROLLED');
        print('Program      : BS Information Technology');
        print('Year & Block : 3rd Year — Block A');
        print('Units Loaded : 21 units (Regular Load)');
        print('');
        print('Your Certificate of Enrollment is ready for download.');
      } else {
        print('⚠️  Cannot verify live enrollment data while offline.');
        print('Cached status: Enrolled as of last sync (June 10, 2025).');
        print('Please reconnect to download your Certificate of Enrollment.');
      }
      break;

    case 'contact registrar':
      print('📞 REGISTRAR\'S OFFICE');
      print('──────────────────────────────────────────');
      print('Connecting you to the Registrar\'s Office...');
      print('');
      print('Office Hours : Monday–Friday, 8:00 AM – 5:00 PM');
      print('Location     : Administration Building, Ground Floor');
      print('Email        : registrar@asscat.edu.ph');
      print('Local Line   : Extension 101');
      print('');
      print('The AI will now step aside — a staff member will assist you. 🙏');
      break;

    default:
      print('🤖 I did not quite understand that request.');
      print('──────────────────────────────────────────');
      print('Here are things I can help you with:');
      print('  • "check clearance"    — View your clearance status');
      print('  • "view schedule"      — See your class timetable');
      print('  • "enrollment status"  — Confirm your enrollment');
      print('  • "contact registrar"  — Reach a real staff member');
      print('');
      print('Try rephrasing your request, or type "contact registrar"');
      print('to speak with someone directly.');
      break;
  }

  print('');
  print('──────────────────────────────────────────');
  print('ASSCAT Campus AI Copilot  |  Powered by SSC');
}
