import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getOtherUsernames(
  List<String> listOfUsers,
  String authUser,
) {
  return authUser == listOfUsers.first ? listOfUsers.last : listOfUsers.first;
}

DocumentReference getOtherUserRefs(
  List<DocumentReference> listOfUsers,
  DocumentReference authUser,
) {
  return authUser == listOfUsers.first ? listOfUsers.last : listOfUsers.first;
}

List<DocumentReference> newCustomFunction(
  DocumentReference authUserRef,
  DocumentReference tutorRef,
  DocumentReference chatRef,
) {
  return [authUserRef, tutorRef];
}

String? courseFormatting(String? inputString) {
  if (inputString == null) {
    return null;
  }

  // Convert to uppercase
  String uppercaseString = inputString.toUpperCase();

  // Remove all spaces
  String noSpacesString = uppercaseString.replaceAll(' ', '');

  return noSpacesString;
}

List<AvailabilityStruct>? initialAvailability() {
// generate 7 random array for each day of the week
  final List<AvailabilityStruct> availability = [];

  final List<String> daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  for (final day in daysOfWeek) {
    // final startTime = DateTime(2023, 1, daysOfWeek.indexOf(day) + 2, 0, 0);
    // final endTime = DateTime(2023, 1, daysOfWeek.indexOf(day) + 2, 0, 0);
    availability.add(
        AvailabilityStruct(dayOfWeek: day, startTime: null, endTime: null));
  }

  return availability;
}

/// output is list of date times for that day
List<DateTime>? getAvailableTimeSlots(
  List<AvailabilityStruct> availability,
  DateTime dateArg,
) {
  // Hourly block between StartTime & EndTime where DateArg= Availability's DayofWeek exclude Bookings
// First, we need to filter the availability list to only include the DayOfWeekWithTimeStruct objects that match the day of the week of the dateArg.
  final matchingAvailability = availability
      .where((a) =>
          a.dayOfWeek.toLowerCase() ==
          DateFormat('EEEE').format(dateArg).toLowerCase())
      .toList();

// Next, we need to create a list of DateTime objects representing the half-hourly blocks between the start and end times of each matching DayOfWeekWithTimeStruct object.
  final availableSlots = <DateTime>[];
  for (final a in matchingAvailability) {
    if (a.hasStartTime() && a.hasEndTime()) {
      final startHour = a.startTime!.hour;
      final endHour = a.endTime!.hour;
      final startMinute = a.startTime!.minute;
      final endMinute = a.endTime!.minute;

      for (var hour = startHour; hour <= endHour; hour++) {
        for (var minute = 0; minute < 60; minute += 30) {
          if (hour == startHour && minute < startMinute) {
            continue; // Skip this half-hour block before the start time.
          }

          if (hour == endHour && minute >= endMinute) {
            break; // Exit the minute loop when reaching or exceeding the end time.
          }

          availableSlots.add(
              DateTime(dateArg.year, dateArg.month, dateArg.day, hour, minute));
        }
      }
    }
  }

  DateTime now = DateTime.now();

  return availableSlots.where((slot) => slot.isAfter(now)).toList();
}

DocumentReference? findExistingChat(
  List<ChatsRecord> chatList,
  DocumentReference tutorRef,
  DocumentReference studentRef,
) {
  for (var chat in chatList) {
    final users = chat.users;
    if (users.contains(tutorRef) && users.contains(studentRef)) {
      return chat.reference;
    }
  }
  return null;
}

List<String>? availableDays(List<AvailabilityStruct>? availability) {
  // from availability, make list of available days that have both start time and end time set and output that new list
  if (availability == null) return null;

  List<String> availableDaysList = [];

  for (var item in availability) {
    if (item.hasDayOfWeek() && item.hasStartTime() && item.hasEndTime()) {
      availableDaysList.add(item.dayOfWeek);
    }
  }

  return availableDaysList.isNotEmpty ? availableDaysList : null;
}

int sumNewMessages(
  List<ChatsRecord> chatDocs,
  DocumentReference authUser,
) {
  int total = 0;

  for (final chat in chatDocs) {
    final unreadUser = chat.unreadUser;
    final count = chat.newMessageCount as int;

    if (unreadUser != null && unreadUser == authUser) {
      total += count;
    }
  }

  return total;
}

List<ForumnsRecord>? filterForumns(
  String? major,
  String? courseNum,
  List<ForumnsRecord>? forumns,
) {
  // filter list of all forumns documents using the given Major, if there is a courseNum format courseNum using the function courseFormatting, then filter the list of all forumns by formatted courseNum and output a list of filtered forumns
  if (forumns == null) return null;

  // Function to format course number
  String courseFormatting(String? courseNum) {
    // Implement your formatting logic here
    return courseNum?.toUpperCase() ?? '';
  }

  String formattedCourseNum = courseFormatting(courseNum);

  return forumns.where((forumn) {
    bool matchesMajor = major == null || forumn.courseMajor == major;
    bool matchesCourseNum =
        formattedCourseNum.isEmpty || forumn.courseNumber == formattedCourseNum;
    return matchesMajor && matchesCourseNum;
  }).toList();
}
