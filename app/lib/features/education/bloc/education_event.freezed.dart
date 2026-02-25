// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EducationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationEventCopyWith<$Res> {
  factory $EducationEventCopyWith(
          EducationEvent value, $Res Function(EducationEvent) then) =
      _$EducationEventCopyWithImpl<$Res, EducationEvent>;
}

/// @nodoc
class _$EducationEventCopyWithImpl<$Res, $Val extends EducationEvent>
    implements $EducationEventCopyWith<$Res> {
  _$EducationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDashboardImplCopyWith<$Res> {
  factory _$$FetchDashboardImplCopyWith(_$FetchDashboardImpl value,
          $Res Function(_$FetchDashboardImpl) then) =
      __$$FetchDashboardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDashboardImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchDashboardImpl>
    implements _$$FetchDashboardImplCopyWith<$Res> {
  __$$FetchDashboardImplCopyWithImpl(
      _$FetchDashboardImpl _value, $Res Function(_$FetchDashboardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDashboardImpl implements _FetchDashboard {
  const _$FetchDashboardImpl();

  @override
  String toString() {
    return 'EducationEvent.fetchDashboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDashboardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchDashboard != null) {
      return fetchDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchDashboard != null) {
      return fetchDashboard(this);
    }
    return orElse();
  }
}

abstract class _FetchDashboard implements EducationEvent {
  const factory _FetchDashboard() = _$FetchDashboardImpl;
}

/// @nodoc
abstract class _$$FetchCoursesImplCopyWith<$Res> {
  factory _$$FetchCoursesImplCopyWith(
          _$FetchCoursesImpl value, $Res Function(_$FetchCoursesImpl) then) =
      __$$FetchCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCoursesImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchCoursesImpl>
    implements _$$FetchCoursesImplCopyWith<$Res> {
  __$$FetchCoursesImplCopyWithImpl(
      _$FetchCoursesImpl _value, $Res Function(_$FetchCoursesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCoursesImpl implements _FetchCourses {
  const _$FetchCoursesImpl();

  @override
  String toString() {
    return 'EducationEvent.fetchCourses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchCourses != null) {
      return fetchCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchCourses != null) {
      return fetchCourses(this);
    }
    return orElse();
  }
}

abstract class _FetchCourses implements EducationEvent {
  const factory _FetchCourses() = _$FetchCoursesImpl;
}

/// @nodoc
abstract class _$$FetchStudentsImplCopyWith<$Res> {
  factory _$$FetchStudentsImplCopyWith(
          _$FetchStudentsImpl value, $Res Function(_$FetchStudentsImpl) then) =
      __$$FetchStudentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId});
}

/// @nodoc
class __$$FetchStudentsImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchStudentsImpl>
    implements _$$FetchStudentsImplCopyWith<$Res> {
  __$$FetchStudentsImplCopyWithImpl(
      _$FetchStudentsImpl _value, $Res Function(_$FetchStudentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$FetchStudentsImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStudentsImpl implements _FetchStudents {
  const _$FetchStudentsImpl(this.instituteId);

  @override
  final String instituteId;

  @override
  String toString() {
    return 'EducationEvent.fetchStudents(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentsImplCopyWith<_$FetchStudentsImpl> get copyWith =>
      __$$FetchStudentsImplCopyWithImpl<_$FetchStudentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchStudents(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchStudents?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudents != null) {
      return fetchStudents(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudents != null) {
      return fetchStudents(this);
    }
    return orElse();
  }
}

abstract class _FetchStudents implements EducationEvent {
  const factory _FetchStudents(final String instituteId) = _$FetchStudentsImpl;

  String get instituteId;
  @JsonKey(ignore: true)
  _$$FetchStudentsImplCopyWith<_$FetchStudentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCourseImplCopyWith<$Res> {
  factory _$$CreateCourseImplCopyWith(
          _$CreateCourseImpl value, $Res Function(_$CreateCourseImpl) then) =
      __$$CreateCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> courseData});
}

/// @nodoc
class __$$CreateCourseImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$CreateCourseImpl>
    implements _$$CreateCourseImplCopyWith<$Res> {
  __$$CreateCourseImplCopyWithImpl(
      _$CreateCourseImpl _value, $Res Function(_$CreateCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseData = null,
  }) {
    return _then(_$CreateCourseImpl(
      null == courseData
          ? _value._courseData
          : courseData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateCourseImpl implements _CreateCourse {
  const _$CreateCourseImpl(final Map<String, dynamic> courseData)
      : _courseData = courseData;

  final Map<String, dynamic> _courseData;
  @override
  Map<String, dynamic> get courseData {
    if (_courseData is EqualUnmodifiableMapView) return _courseData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_courseData);
  }

  @override
  String toString() {
    return 'EducationEvent.createCourse(courseData: $courseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCourseImpl &&
            const DeepCollectionEquality()
                .equals(other._courseData, _courseData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courseData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCourseImplCopyWith<_$CreateCourseImpl> get copyWith =>
      __$$CreateCourseImplCopyWithImpl<_$CreateCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return createCourse(courseData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return createCourse?.call(courseData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(courseData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return createCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return createCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(this);
    }
    return orElse();
  }
}

abstract class _CreateCourse implements EducationEvent {
  const factory _CreateCourse(final Map<String, dynamic> courseData) =
      _$CreateCourseImpl;

  Map<String, dynamic> get courseData;
  @JsonKey(ignore: true)
  _$$CreateCourseImplCopyWith<_$CreateCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLessonImplCopyWith<$Res> {
  factory _$$AddLessonImplCopyWith(
          _$AddLessonImpl value, $Res Function(_$AddLessonImpl) then) =
      __$$AddLessonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseId, Map<String, dynamic> lessonData});
}

/// @nodoc
class __$$AddLessonImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$AddLessonImpl>
    implements _$$AddLessonImplCopyWith<$Res> {
  __$$AddLessonImplCopyWithImpl(
      _$AddLessonImpl _value, $Res Function(_$AddLessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? lessonData = null,
  }) {
    return _then(_$AddLessonImpl(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      null == lessonData
          ? _value._lessonData
          : lessonData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AddLessonImpl implements _AddLesson {
  const _$AddLessonImpl(this.courseId, final Map<String, dynamic> lessonData)
      : _lessonData = lessonData;

  @override
  final String courseId;
  final Map<String, dynamic> _lessonData;
  @override
  Map<String, dynamic> get lessonData {
    if (_lessonData is EqualUnmodifiableMapView) return _lessonData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lessonData);
  }

  @override
  String toString() {
    return 'EducationEvent.addLesson(courseId: $courseId, lessonData: $lessonData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLessonImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            const DeepCollectionEquality()
                .equals(other._lessonData, _lessonData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, courseId, const DeepCollectionEquality().hash(_lessonData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLessonImplCopyWith<_$AddLessonImpl> get copyWith =>
      __$$AddLessonImplCopyWithImpl<_$AddLessonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return addLesson(courseId, lessonData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return addLesson?.call(courseId, lessonData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (addLesson != null) {
      return addLesson(courseId, lessonData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return addLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return addLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (addLesson != null) {
      return addLesson(this);
    }
    return orElse();
  }
}

abstract class _AddLesson implements EducationEvent {
  const factory _AddLesson(
          final String courseId, final Map<String, dynamic> lessonData) =
      _$AddLessonImpl;

  String get courseId;
  Map<String, dynamic> get lessonData;
  @JsonKey(ignore: true)
  _$$AddLessonImplCopyWith<_$AddLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyStudentImplCopyWith<$Res> {
  factory _$$VerifyStudentImplCopyWith(
          _$VerifyStudentImpl value, $Res Function(_$VerifyStudentImpl) then) =
      __$$VerifyStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String enrollmentId, bool approved});
}

/// @nodoc
class __$$VerifyStudentImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$VerifyStudentImpl>
    implements _$$VerifyStudentImplCopyWith<$Res> {
  __$$VerifyStudentImplCopyWithImpl(
      _$VerifyStudentImpl _value, $Res Function(_$VerifyStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? approved = null,
  }) {
    return _then(_$VerifyStudentImpl(
      null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyStudentImpl implements _VerifyStudent {
  const _$VerifyStudentImpl(this.enrollmentId, this.approved);

  @override
  final String enrollmentId;
  @override
  final bool approved;

  @override
  String toString() {
    return 'EducationEvent.verifyStudent(enrollmentId: $enrollmentId, approved: $approved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyStudentImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.approved, approved) ||
                other.approved == approved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enrollmentId, approved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyStudentImplCopyWith<_$VerifyStudentImpl> get copyWith =>
      __$$VerifyStudentImplCopyWithImpl<_$VerifyStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return verifyStudent(enrollmentId, approved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return verifyStudent?.call(enrollmentId, approved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (verifyStudent != null) {
      return verifyStudent(enrollmentId, approved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return verifyStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return verifyStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (verifyStudent != null) {
      return verifyStudent(this);
    }
    return orElse();
  }
}

abstract class _VerifyStudent implements EducationEvent {
  const factory _VerifyStudent(final String enrollmentId, final bool approved) =
      _$VerifyStudentImpl;

  String get enrollmentId;
  bool get approved;
  @JsonKey(ignore: true)
  _$$VerifyStudentImplCopyWith<_$VerifyStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostPlacementImplCopyWith<$Res> {
  factory _$$PostPlacementImplCopyWith(
          _$PostPlacementImpl value, $Res Function(_$PostPlacementImpl) then) =
      __$$PostPlacementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> placementData});
}

/// @nodoc
class __$$PostPlacementImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$PostPlacementImpl>
    implements _$$PostPlacementImplCopyWith<$Res> {
  __$$PostPlacementImplCopyWithImpl(
      _$PostPlacementImpl _value, $Res Function(_$PostPlacementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placementData = null,
  }) {
    return _then(_$PostPlacementImpl(
      null == placementData
          ? _value._placementData
          : placementData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$PostPlacementImpl implements _PostPlacement {
  const _$PostPlacementImpl(final Map<String, dynamic> placementData)
      : _placementData = placementData;

  final Map<String, dynamic> _placementData;
  @override
  Map<String, dynamic> get placementData {
    if (_placementData is EqualUnmodifiableMapView) return _placementData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_placementData);
  }

  @override
  String toString() {
    return 'EducationEvent.postPlacement(placementData: $placementData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPlacementImpl &&
            const DeepCollectionEquality()
                .equals(other._placementData, _placementData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_placementData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPlacementImplCopyWith<_$PostPlacementImpl> get copyWith =>
      __$$PostPlacementImplCopyWithImpl<_$PostPlacementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return postPlacement(placementData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return postPlacement?.call(placementData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (postPlacement != null) {
      return postPlacement(placementData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return postPlacement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return postPlacement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (postPlacement != null) {
      return postPlacement(this);
    }
    return orElse();
  }
}

abstract class _PostPlacement implements EducationEvent {
  const factory _PostPlacement(final Map<String, dynamic> placementData) =
      _$PostPlacementImpl;

  Map<String, dynamic> get placementData;
  @JsonKey(ignore: true)
  _$$PostPlacementImplCopyWith<_$PostPlacementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFeeStructureImplCopyWith<$Res> {
  factory _$$CreateFeeStructureImplCopyWith(_$CreateFeeStructureImpl value,
          $Res Function(_$CreateFeeStructureImpl) then) =
      __$$CreateFeeStructureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId, Map<String, dynamic> feeData});
}

/// @nodoc
class __$$CreateFeeStructureImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$CreateFeeStructureImpl>
    implements _$$CreateFeeStructureImplCopyWith<$Res> {
  __$$CreateFeeStructureImplCopyWithImpl(_$CreateFeeStructureImpl _value,
      $Res Function(_$CreateFeeStructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
    Object? feeData = null,
  }) {
    return _then(_$CreateFeeStructureImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
      null == feeData
          ? _value._feeData
          : feeData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateFeeStructureImpl implements _CreateFeeStructure {
  const _$CreateFeeStructureImpl(
      this.instituteId, final Map<String, dynamic> feeData)
      : _feeData = feeData;

  @override
  final String instituteId;
  final Map<String, dynamic> _feeData;
  @override
  Map<String, dynamic> get feeData {
    if (_feeData is EqualUnmodifiableMapView) return _feeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_feeData);
  }

  @override
  String toString() {
    return 'EducationEvent.createFeeStructure(instituteId: $instituteId, feeData: $feeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeeStructureImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            const DeepCollectionEquality().equals(other._feeData, _feeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, instituteId, const DeepCollectionEquality().hash(_feeData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeeStructureImplCopyWith<_$CreateFeeStructureImpl> get copyWith =>
      __$$CreateFeeStructureImplCopyWithImpl<_$CreateFeeStructureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return createFeeStructure(instituteId, feeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return createFeeStructure?.call(instituteId, feeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createFeeStructure != null) {
      return createFeeStructure(instituteId, feeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return createFeeStructure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return createFeeStructure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createFeeStructure != null) {
      return createFeeStructure(this);
    }
    return orElse();
  }
}

abstract class _CreateFeeStructure implements EducationEvent {
  const factory _CreateFeeStructure(
          final String instituteId, final Map<String, dynamic> feeData) =
      _$CreateFeeStructureImpl;

  String get instituteId;
  Map<String, dynamic> get feeData;
  @JsonKey(ignore: true)
  _$$CreateFeeStructureImplCopyWith<_$CreateFeeStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeeStructuresImplCopyWith<$Res> {
  factory _$$FetchFeeStructuresImplCopyWith(_$FetchFeeStructuresImpl value,
          $Res Function(_$FetchFeeStructuresImpl) then) =
      __$$FetchFeeStructuresImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId});
}

/// @nodoc
class __$$FetchFeeStructuresImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchFeeStructuresImpl>
    implements _$$FetchFeeStructuresImplCopyWith<$Res> {
  __$$FetchFeeStructuresImplCopyWithImpl(_$FetchFeeStructuresImpl _value,
      $Res Function(_$FetchFeeStructuresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$FetchFeeStructuresImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFeeStructuresImpl implements _FetchFeeStructures {
  const _$FetchFeeStructuresImpl(this.instituteId);

  @override
  final String instituteId;

  @override
  String toString() {
    return 'EducationEvent.fetchFeeStructures(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeeStructuresImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeeStructuresImplCopyWith<_$FetchFeeStructuresImpl> get copyWith =>
      __$$FetchFeeStructuresImplCopyWithImpl<_$FetchFeeStructuresImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchFeeStructures(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchFeeStructures?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchFeeStructures != null) {
      return fetchFeeStructures(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchFeeStructures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchFeeStructures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchFeeStructures != null) {
      return fetchFeeStructures(this);
    }
    return orElse();
  }
}

abstract class _FetchFeeStructures implements EducationEvent {
  const factory _FetchFeeStructures(final String instituteId) =
      _$FetchFeeStructuresImpl;

  String get instituteId;
  @JsonKey(ignore: true)
  _$$FetchFeeStructuresImplCopyWith<_$FetchFeeStructuresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordFeePaymentImplCopyWith<$Res> {
  factory _$$RecordFeePaymentImplCopyWith(_$RecordFeePaymentImpl value,
          $Res Function(_$RecordFeePaymentImpl) then) =
      __$$RecordFeePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> paymentData});
}

/// @nodoc
class __$$RecordFeePaymentImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$RecordFeePaymentImpl>
    implements _$$RecordFeePaymentImplCopyWith<$Res> {
  __$$RecordFeePaymentImplCopyWithImpl(_$RecordFeePaymentImpl _value,
      $Res Function(_$RecordFeePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentData = null,
  }) {
    return _then(_$RecordFeePaymentImpl(
      null == paymentData
          ? _value._paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$RecordFeePaymentImpl implements _RecordFeePayment {
  const _$RecordFeePaymentImpl(final Map<String, dynamic> paymentData)
      : _paymentData = paymentData;

  final Map<String, dynamic> _paymentData;
  @override
  Map<String, dynamic> get paymentData {
    if (_paymentData is EqualUnmodifiableMapView) return _paymentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paymentData);
  }

  @override
  String toString() {
    return 'EducationEvent.recordFeePayment(paymentData: $paymentData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordFeePaymentImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentData, _paymentData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordFeePaymentImplCopyWith<_$RecordFeePaymentImpl> get copyWith =>
      __$$RecordFeePaymentImplCopyWithImpl<_$RecordFeePaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return recordFeePayment(paymentData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return recordFeePayment?.call(paymentData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (recordFeePayment != null) {
      return recordFeePayment(paymentData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return recordFeePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return recordFeePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (recordFeePayment != null) {
      return recordFeePayment(this);
    }
    return orElse();
  }
}

abstract class _RecordFeePayment implements EducationEvent {
  const factory _RecordFeePayment(final Map<String, dynamic> paymentData) =
      _$RecordFeePaymentImpl;

  Map<String, dynamic> get paymentData;
  @JsonKey(ignore: true)
  _$$RecordFeePaymentImplCopyWith<_$RecordFeePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStudentFeesImplCopyWith<$Res> {
  factory _$$FetchStudentFeesImplCopyWith(_$FetchStudentFeesImpl value,
          $Res Function(_$FetchStudentFeesImpl) then) =
      __$$FetchStudentFeesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId, String studentId});
}

/// @nodoc
class __$$FetchStudentFeesImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchStudentFeesImpl>
    implements _$$FetchStudentFeesImplCopyWith<$Res> {
  __$$FetchStudentFeesImplCopyWithImpl(_$FetchStudentFeesImpl _value,
      $Res Function(_$FetchStudentFeesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
    Object? studentId = null,
  }) {
    return _then(_$FetchStudentFeesImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStudentFeesImpl implements _FetchStudentFees {
  const _$FetchStudentFeesImpl(this.instituteId, this.studentId);

  @override
  final String instituteId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'EducationEvent.fetchStudentFees(instituteId: $instituteId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentFeesImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentFeesImplCopyWith<_$FetchStudentFeesImpl> get copyWith =>
      __$$FetchStudentFeesImplCopyWithImpl<_$FetchStudentFeesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchStudentFees(instituteId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchStudentFees?.call(instituteId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentFees != null) {
      return fetchStudentFees(instituteId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchStudentFees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchStudentFees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentFees != null) {
      return fetchStudentFees(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentFees implements EducationEvent {
  const factory _FetchStudentFees(
          final String instituteId, final String studentId) =
      _$FetchStudentFeesImpl;

  String get instituteId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$FetchStudentFeesImplCopyWith<_$FetchStudentFeesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GrantScholarshipImplCopyWith<$Res> {
  factory _$$GrantScholarshipImplCopyWith(_$GrantScholarshipImpl value,
          $Res Function(_$GrantScholarshipImpl) then) =
      __$$GrantScholarshipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String enrollmentId, double discountAmount});
}

/// @nodoc
class __$$GrantScholarshipImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$GrantScholarshipImpl>
    implements _$$GrantScholarshipImplCopyWith<$Res> {
  __$$GrantScholarshipImplCopyWithImpl(_$GrantScholarshipImpl _value,
      $Res Function(_$GrantScholarshipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? discountAmount = null,
  }) {
    return _then(_$GrantScholarshipImpl(
      null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GrantScholarshipImpl implements _GrantScholarship {
  const _$GrantScholarshipImpl(this.enrollmentId, this.discountAmount);

  @override
  final String enrollmentId;
  @override
  final double discountAmount;

  @override
  String toString() {
    return 'EducationEvent.grantScholarship(enrollmentId: $enrollmentId, discountAmount: $discountAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrantScholarshipImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enrollmentId, discountAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrantScholarshipImplCopyWith<_$GrantScholarshipImpl> get copyWith =>
      __$$GrantScholarshipImplCopyWithImpl<_$GrantScholarshipImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return grantScholarship(enrollmentId, discountAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return grantScholarship?.call(enrollmentId, discountAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (grantScholarship != null) {
      return grantScholarship(enrollmentId, discountAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return grantScholarship(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return grantScholarship?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (grantScholarship != null) {
      return grantScholarship(this);
    }
    return orElse();
  }
}

abstract class _GrantScholarship implements EducationEvent {
  const factory _GrantScholarship(
          final String enrollmentId, final double discountAmount) =
      _$GrantScholarshipImpl;

  String get enrollmentId;
  double get discountAmount;
  @JsonKey(ignore: true)
  _$$GrantScholarshipImplCopyWith<_$GrantScholarshipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateStudentLeadImplCopyWith<$Res> {
  factory _$$CreateStudentLeadImplCopyWith(_$CreateStudentLeadImpl value,
          $Res Function(_$CreateStudentLeadImpl) then) =
      __$$CreateStudentLeadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId, Map<String, dynamic> leadData});
}

/// @nodoc
class __$$CreateStudentLeadImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$CreateStudentLeadImpl>
    implements _$$CreateStudentLeadImplCopyWith<$Res> {
  __$$CreateStudentLeadImplCopyWithImpl(_$CreateStudentLeadImpl _value,
      $Res Function(_$CreateStudentLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
    Object? leadData = null,
  }) {
    return _then(_$CreateStudentLeadImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
      null == leadData
          ? _value._leadData
          : leadData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateStudentLeadImpl implements _CreateStudentLead {
  const _$CreateStudentLeadImpl(
      this.instituteId, final Map<String, dynamic> leadData)
      : _leadData = leadData;

  @override
  final String instituteId;
  final Map<String, dynamic> _leadData;
  @override
  Map<String, dynamic> get leadData {
    if (_leadData is EqualUnmodifiableMapView) return _leadData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_leadData);
  }

  @override
  String toString() {
    return 'EducationEvent.createStudentLead(instituteId: $instituteId, leadData: $leadData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStudentLeadImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            const DeepCollectionEquality().equals(other._leadData, _leadData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, instituteId, const DeepCollectionEquality().hash(_leadData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStudentLeadImplCopyWith<_$CreateStudentLeadImpl> get copyWith =>
      __$$CreateStudentLeadImplCopyWithImpl<_$CreateStudentLeadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return createStudentLead(instituteId, leadData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return createStudentLead?.call(instituteId, leadData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createStudentLead != null) {
      return createStudentLead(instituteId, leadData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return createStudentLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return createStudentLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createStudentLead != null) {
      return createStudentLead(this);
    }
    return orElse();
  }
}

abstract class _CreateStudentLead implements EducationEvent {
  const factory _CreateStudentLead(
          final String instituteId, final Map<String, dynamic> leadData) =
      _$CreateStudentLeadImpl;

  String get instituteId;
  Map<String, dynamic> get leadData;
  @JsonKey(ignore: true)
  _$$CreateStudentLeadImplCopyWith<_$CreateStudentLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStudentLeadsImplCopyWith<$Res> {
  factory _$$FetchStudentLeadsImplCopyWith(_$FetchStudentLeadsImpl value,
          $Res Function(_$FetchStudentLeadsImpl) then) =
      __$$FetchStudentLeadsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId});
}

/// @nodoc
class __$$FetchStudentLeadsImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchStudentLeadsImpl>
    implements _$$FetchStudentLeadsImplCopyWith<$Res> {
  __$$FetchStudentLeadsImplCopyWithImpl(_$FetchStudentLeadsImpl _value,
      $Res Function(_$FetchStudentLeadsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$FetchStudentLeadsImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStudentLeadsImpl implements _FetchStudentLeads {
  const _$FetchStudentLeadsImpl(this.instituteId);

  @override
  final String instituteId;

  @override
  String toString() {
    return 'EducationEvent.fetchStudentLeads(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentLeadsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentLeadsImplCopyWith<_$FetchStudentLeadsImpl> get copyWith =>
      __$$FetchStudentLeadsImplCopyWithImpl<_$FetchStudentLeadsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchStudentLeads(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchStudentLeads?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentLeads != null) {
      return fetchStudentLeads(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchStudentLeads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchStudentLeads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentLeads != null) {
      return fetchStudentLeads(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentLeads implements EducationEvent {
  const factory _FetchStudentLeads(final String instituteId) =
      _$FetchStudentLeadsImpl;

  String get instituteId;
  @JsonKey(ignore: true)
  _$$FetchStudentLeadsImplCopyWith<_$FetchStudentLeadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudentLeadStatusImplCopyWith<$Res> {
  factory _$$UpdateStudentLeadStatusImplCopyWith(
          _$UpdateStudentLeadStatusImpl value,
          $Res Function(_$UpdateStudentLeadStatusImpl) then) =
      __$$UpdateStudentLeadStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String leadId, String status});
}

/// @nodoc
class __$$UpdateStudentLeadStatusImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$UpdateStudentLeadStatusImpl>
    implements _$$UpdateStudentLeadStatusImplCopyWith<$Res> {
  __$$UpdateStudentLeadStatusImplCopyWithImpl(
      _$UpdateStudentLeadStatusImpl _value,
      $Res Function(_$UpdateStudentLeadStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? status = null,
  }) {
    return _then(_$UpdateStudentLeadStatusImpl(
      null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStudentLeadStatusImpl implements _UpdateStudentLeadStatus {
  const _$UpdateStudentLeadStatusImpl(this.leadId, this.status);

  @override
  final String leadId;
  @override
  final String status;

  @override
  String toString() {
    return 'EducationEvent.updateStudentLeadStatus(leadId: $leadId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudentLeadStatusImpl &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leadId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentLeadStatusImplCopyWith<_$UpdateStudentLeadStatusImpl>
      get copyWith => __$$UpdateStudentLeadStatusImplCopyWithImpl<
          _$UpdateStudentLeadStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return updateStudentLeadStatus(leadId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return updateStudentLeadStatus?.call(leadId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (updateStudentLeadStatus != null) {
      return updateStudentLeadStatus(leadId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return updateStudentLeadStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return updateStudentLeadStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (updateStudentLeadStatus != null) {
      return updateStudentLeadStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStudentLeadStatus implements EducationEvent {
  const factory _UpdateStudentLeadStatus(
      final String leadId, final String status) = _$UpdateStudentLeadStatusImpl;

  String get leadId;
  String get status;
  @JsonKey(ignore: true)
  _$$UpdateStudentLeadStatusImplCopyWith<_$UpdateStudentLeadStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IssueCertificateImplCopyWith<$Res> {
  factory _$$IssueCertificateImplCopyWith(_$IssueCertificateImpl value,
          $Res Function(_$IssueCertificateImpl) then) =
      __$$IssueCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String enrollmentId});
}

/// @nodoc
class __$$IssueCertificateImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$IssueCertificateImpl>
    implements _$$IssueCertificateImplCopyWith<$Res> {
  __$$IssueCertificateImplCopyWithImpl(_$IssueCertificateImpl _value,
      $Res Function(_$IssueCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
  }) {
    return _then(_$IssueCertificateImpl(
      null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IssueCertificateImpl implements _IssueCertificate {
  const _$IssueCertificateImpl(this.enrollmentId);

  @override
  final String enrollmentId;

  @override
  String toString() {
    return 'EducationEvent.issueCertificate(enrollmentId: $enrollmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueCertificateImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enrollmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueCertificateImplCopyWith<_$IssueCertificateImpl> get copyWith =>
      __$$IssueCertificateImplCopyWithImpl<_$IssueCertificateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return issueCertificate(enrollmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return issueCertificate?.call(enrollmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (issueCertificate != null) {
      return issueCertificate(enrollmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return issueCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return issueCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (issueCertificate != null) {
      return issueCertificate(this);
    }
    return orElse();
  }
}

abstract class _IssueCertificate implements EducationEvent {
  const factory _IssueCertificate(final String enrollmentId) =
      _$IssueCertificateImpl;

  String get enrollmentId;
  @JsonKey(ignore: true)
  _$$IssueCertificateImplCopyWith<_$IssueCertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitPracticalScoreImplCopyWith<$Res> {
  factory _$$SubmitPracticalScoreImplCopyWith(_$SubmitPracticalScoreImpl value,
          $Res Function(_$SubmitPracticalScoreImpl) then) =
      __$$SubmitPracticalScoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String batchId, String studentId, Map<String, dynamic> scoreData});
}

/// @nodoc
class __$$SubmitPracticalScoreImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$SubmitPracticalScoreImpl>
    implements _$$SubmitPracticalScoreImplCopyWith<$Res> {
  __$$SubmitPracticalScoreImplCopyWithImpl(_$SubmitPracticalScoreImpl _value,
      $Res Function(_$SubmitPracticalScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? studentId = null,
    Object? scoreData = null,
  }) {
    return _then(_$SubmitPracticalScoreImpl(
      null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == scoreData
          ? _value._scoreData
          : scoreData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SubmitPracticalScoreImpl implements _SubmitPracticalScore {
  const _$SubmitPracticalScoreImpl(
      this.batchId, this.studentId, final Map<String, dynamic> scoreData)
      : _scoreData = scoreData;

  @override
  final String batchId;
  @override
  final String studentId;
  final Map<String, dynamic> _scoreData;
  @override
  Map<String, dynamic> get scoreData {
    if (_scoreData is EqualUnmodifiableMapView) return _scoreData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_scoreData);
  }

  @override
  String toString() {
    return 'EducationEvent.submitPracticalScore(batchId: $batchId, studentId: $studentId, scoreData: $scoreData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitPracticalScoreImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            const DeepCollectionEquality()
                .equals(other._scoreData, _scoreData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, batchId, studentId,
      const DeepCollectionEquality().hash(_scoreData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitPracticalScoreImplCopyWith<_$SubmitPracticalScoreImpl>
      get copyWith =>
          __$$SubmitPracticalScoreImplCopyWithImpl<_$SubmitPracticalScoreImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return submitPracticalScore(batchId, studentId, scoreData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return submitPracticalScore?.call(batchId, studentId, scoreData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (submitPracticalScore != null) {
      return submitPracticalScore(batchId, studentId, scoreData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return submitPracticalScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return submitPracticalScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (submitPracticalScore != null) {
      return submitPracticalScore(this);
    }
    return orElse();
  }
}

abstract class _SubmitPracticalScore implements EducationEvent {
  const factory _SubmitPracticalScore(
      final String batchId,
      final String studentId,
      final Map<String, dynamic> scoreData) = _$SubmitPracticalScoreImpl;

  String get batchId;
  String get studentId;
  Map<String, dynamic> get scoreData;
  @JsonKey(ignore: true)
  _$$SubmitPracticalScoreImplCopyWith<_$SubmitPracticalScoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStudentPracticalScoresImplCopyWith<$Res> {
  factory _$$FetchStudentPracticalScoresImplCopyWith(
          _$FetchStudentPracticalScoresImpl value,
          $Res Function(_$FetchStudentPracticalScoresImpl) then) =
      __$$FetchStudentPracticalScoresImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String batchId, String studentId});
}

/// @nodoc
class __$$FetchStudentPracticalScoresImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res,
        _$FetchStudentPracticalScoresImpl>
    implements _$$FetchStudentPracticalScoresImplCopyWith<$Res> {
  __$$FetchStudentPracticalScoresImplCopyWithImpl(
      _$FetchStudentPracticalScoresImpl _value,
      $Res Function(_$FetchStudentPracticalScoresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? studentId = null,
  }) {
    return _then(_$FetchStudentPracticalScoresImpl(
      null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStudentPracticalScoresImpl
    implements _FetchStudentPracticalScores {
  const _$FetchStudentPracticalScoresImpl(this.batchId, this.studentId);

  @override
  final String batchId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'EducationEvent.fetchStudentPracticalScores(batchId: $batchId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentPracticalScoresImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, batchId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentPracticalScoresImplCopyWith<_$FetchStudentPracticalScoresImpl>
      get copyWith => __$$FetchStudentPracticalScoresImplCopyWithImpl<
          _$FetchStudentPracticalScoresImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchStudentPracticalScores(batchId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchStudentPracticalScores?.call(batchId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentPracticalScores != null) {
      return fetchStudentPracticalScores(batchId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchStudentPracticalScores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchStudentPracticalScores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchStudentPracticalScores != null) {
      return fetchStudentPracticalScores(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentPracticalScores implements EducationEvent {
  const factory _FetchStudentPracticalScores(
          final String batchId, final String studentId) =
      _$FetchStudentPracticalScoresImpl;

  String get batchId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$FetchStudentPracticalScoresImplCopyWith<_$FetchStudentPracticalScoresImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPlacementListingsImplCopyWith<$Res> {
  factory _$$FetchPlacementListingsImplCopyWith(
          _$FetchPlacementListingsImpl value,
          $Res Function(_$FetchPlacementListingsImpl) then) =
      __$$FetchPlacementListingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? instituteId});
}

/// @nodoc
class __$$FetchPlacementListingsImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchPlacementListingsImpl>
    implements _$$FetchPlacementListingsImplCopyWith<$Res> {
  __$$FetchPlacementListingsImplCopyWithImpl(
      _$FetchPlacementListingsImpl _value,
      $Res Function(_$FetchPlacementListingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = freezed,
  }) {
    return _then(_$FetchPlacementListingsImpl(
      freezed == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchPlacementListingsImpl implements _FetchPlacementListings {
  const _$FetchPlacementListingsImpl(this.instituteId);

  @override
  final String? instituteId;

  @override
  String toString() {
    return 'EducationEvent.fetchPlacementListings(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPlacementListingsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPlacementListingsImplCopyWith<_$FetchPlacementListingsImpl>
      get copyWith => __$$FetchPlacementListingsImplCopyWithImpl<
          _$FetchPlacementListingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchPlacementListings(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchPlacementListings?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchPlacementListings != null) {
      return fetchPlacementListings(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchPlacementListings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchPlacementListings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchPlacementListings != null) {
      return fetchPlacementListings(this);
    }
    return orElse();
  }
}

abstract class _FetchPlacementListings implements EducationEvent {
  const factory _FetchPlacementListings(final String? instituteId) =
      _$FetchPlacementListingsImpl;

  String? get instituteId;
  @JsonKey(ignore: true)
  _$$FetchPlacementListingsImplCopyWith<_$FetchPlacementListingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlacementListingImplCopyWith<$Res> {
  factory _$$CreatePlacementListingImplCopyWith(
          _$CreatePlacementListingImpl value,
          $Res Function(_$CreatePlacementListingImpl) then) =
      __$$CreatePlacementListingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId, Map<String, dynamic> listingData});
}

/// @nodoc
class __$$CreatePlacementListingImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$CreatePlacementListingImpl>
    implements _$$CreatePlacementListingImplCopyWith<$Res> {
  __$$CreatePlacementListingImplCopyWithImpl(
      _$CreatePlacementListingImpl _value,
      $Res Function(_$CreatePlacementListingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
    Object? listingData = null,
  }) {
    return _then(_$CreatePlacementListingImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
      null == listingData
          ? _value._listingData
          : listingData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreatePlacementListingImpl implements _CreatePlacementListing {
  const _$CreatePlacementListingImpl(
      this.instituteId, final Map<String, dynamic> listingData)
      : _listingData = listingData;

  @override
  final String instituteId;
  final Map<String, dynamic> _listingData;
  @override
  Map<String, dynamic> get listingData {
    if (_listingData is EqualUnmodifiableMapView) return _listingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_listingData);
  }

  @override
  String toString() {
    return 'EducationEvent.createPlacementListing(instituteId: $instituteId, listingData: $listingData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlacementListingImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            const DeepCollectionEquality()
                .equals(other._listingData, _listingData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId,
      const DeepCollectionEquality().hash(_listingData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlacementListingImplCopyWith<_$CreatePlacementListingImpl>
      get copyWith => __$$CreatePlacementListingImplCopyWithImpl<
          _$CreatePlacementListingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return createPlacementListing(instituteId, listingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return createPlacementListing?.call(instituteId, listingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createPlacementListing != null) {
      return createPlacementListing(instituteId, listingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return createPlacementListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return createPlacementListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (createPlacementListing != null) {
      return createPlacementListing(this);
    }
    return orElse();
  }
}

abstract class _CreatePlacementListing implements EducationEvent {
  const factory _CreatePlacementListing(
          final String instituteId, final Map<String, dynamic> listingData) =
      _$CreatePlacementListingImpl;

  String get instituteId;
  Map<String, dynamic> get listingData;
  @JsonKey(ignore: true)
  _$$CreatePlacementListingImplCopyWith<_$CreatePlacementListingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBatchDetailsImplCopyWith<$Res> {
  factory _$$FetchBatchDetailsImplCopyWith(_$FetchBatchDetailsImpl value,
          $Res Function(_$FetchBatchDetailsImpl) then) =
      __$$FetchBatchDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String batchId});
}

/// @nodoc
class __$$FetchBatchDetailsImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchBatchDetailsImpl>
    implements _$$FetchBatchDetailsImplCopyWith<$Res> {
  __$$FetchBatchDetailsImplCopyWithImpl(_$FetchBatchDetailsImpl _value,
      $Res Function(_$FetchBatchDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
  }) {
    return _then(_$FetchBatchDetailsImpl(
      null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchBatchDetailsImpl implements _FetchBatchDetails {
  const _$FetchBatchDetailsImpl(this.batchId);

  @override
  final String batchId;

  @override
  String toString() {
    return 'EducationEvent.fetchBatchDetails(batchId: $batchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBatchDetailsImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, batchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBatchDetailsImplCopyWith<_$FetchBatchDetailsImpl> get copyWith =>
      __$$FetchBatchDetailsImplCopyWithImpl<_$FetchBatchDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchBatchDetails(batchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchBatchDetails?.call(batchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchBatchDetails != null) {
      return fetchBatchDetails(batchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchBatchDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchBatchDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchBatchDetails != null) {
      return fetchBatchDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchBatchDetails implements EducationEvent {
  const factory _FetchBatchDetails(final String batchId) =
      _$FetchBatchDetailsImpl;

  String get batchId;
  @JsonKey(ignore: true)
  _$$FetchBatchDetailsImplCopyWith<_$FetchBatchDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogAttendanceImplCopyWith<$Res> {
  factory _$$LogAttendanceImplCopyWith(
          _$LogAttendanceImpl value, $Res Function(_$LogAttendanceImpl) then) =
      __$$LogAttendanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String batchId, String studentId, String date, String status});
}

/// @nodoc
class __$$LogAttendanceImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$LogAttendanceImpl>
    implements _$$LogAttendanceImplCopyWith<$Res> {
  __$$LogAttendanceImplCopyWithImpl(
      _$LogAttendanceImpl _value, $Res Function(_$LogAttendanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? studentId = null,
    Object? date = null,
    Object? status = null,
  }) {
    return _then(_$LogAttendanceImpl(
      batchId: null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogAttendanceImpl implements _LogAttendance {
  const _$LogAttendanceImpl(
      {required this.batchId,
      required this.studentId,
      required this.date,
      required this.status});

  @override
  final String batchId;
  @override
  final String studentId;
  @override
  final String date;
  @override
  final String status;

  @override
  String toString() {
    return 'EducationEvent.logAttendance(batchId: $batchId, studentId: $studentId, date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogAttendanceImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, batchId, studentId, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogAttendanceImplCopyWith<_$LogAttendanceImpl> get copyWith =>
      __$$LogAttendanceImplCopyWithImpl<_$LogAttendanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return logAttendance(batchId, studentId, date, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return logAttendance?.call(batchId, studentId, date, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (logAttendance != null) {
      return logAttendance(batchId, studentId, date, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return logAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return logAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (logAttendance != null) {
      return logAttendance(this);
    }
    return orElse();
  }
}

abstract class _LogAttendance implements EducationEvent {
  const factory _LogAttendance(
      {required final String batchId,
      required final String studentId,
      required final String date,
      required final String status}) = _$LogAttendanceImpl;

  String get batchId;
  String get studentId;
  String get date;
  String get status;
  @JsonKey(ignore: true)
  _$$LogAttendanceImplCopyWith<_$LogAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAttendanceLogsImplCopyWith<$Res> {
  factory _$$FetchAttendanceLogsImplCopyWith(_$FetchAttendanceLogsImpl value,
          $Res Function(_$FetchAttendanceLogsImpl) then) =
      __$$FetchAttendanceLogsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String batchId, String date});
}

/// @nodoc
class __$$FetchAttendanceLogsImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchAttendanceLogsImpl>
    implements _$$FetchAttendanceLogsImplCopyWith<$Res> {
  __$$FetchAttendanceLogsImplCopyWithImpl(_$FetchAttendanceLogsImpl _value,
      $Res Function(_$FetchAttendanceLogsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? date = null,
  }) {
    return _then(_$FetchAttendanceLogsImpl(
      null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAttendanceLogsImpl implements _FetchAttendanceLogs {
  const _$FetchAttendanceLogsImpl(this.batchId, this.date);

  @override
  final String batchId;
  @override
  final String date;

  @override
  String toString() {
    return 'EducationEvent.fetchAttendanceLogs(batchId: $batchId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAttendanceLogsImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, batchId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAttendanceLogsImplCopyWith<_$FetchAttendanceLogsImpl> get copyWith =>
      __$$FetchAttendanceLogsImplCopyWithImpl<_$FetchAttendanceLogsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchAttendanceLogs(batchId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchAttendanceLogs?.call(batchId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchAttendanceLogs != null) {
      return fetchAttendanceLogs(batchId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchAttendanceLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchAttendanceLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchAttendanceLogs != null) {
      return fetchAttendanceLogs(this);
    }
    return orElse();
  }
}

abstract class _FetchAttendanceLogs implements EducationEvent {
  const factory _FetchAttendanceLogs(final String batchId, final String date) =
      _$FetchAttendanceLogsImpl;

  String get batchId;
  String get date;
  @JsonKey(ignore: true)
  _$$FetchAttendanceLogsImplCopyWith<_$FetchAttendanceLogsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllInstituteFeesImplCopyWith<$Res> {
  factory _$$FetchAllInstituteFeesImplCopyWith(
          _$FetchAllInstituteFeesImpl value,
          $Res Function(_$FetchAllInstituteFeesImpl) then) =
      __$$FetchAllInstituteFeesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instituteId});
}

/// @nodoc
class __$$FetchAllInstituteFeesImplCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res, _$FetchAllInstituteFeesImpl>
    implements _$$FetchAllInstituteFeesImplCopyWith<$Res> {
  __$$FetchAllInstituteFeesImplCopyWithImpl(_$FetchAllInstituteFeesImpl _value,
      $Res Function(_$FetchAllInstituteFeesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$FetchAllInstituteFeesImpl(
      null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAllInstituteFeesImpl implements _FetchAllInstituteFees {
  const _$FetchAllInstituteFeesImpl(this.instituteId);

  @override
  final String instituteId;

  @override
  String toString() {
    return 'EducationEvent.fetchAllInstituteFees(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllInstituteFeesImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllInstituteFeesImplCopyWith<_$FetchAllInstituteFeesImpl>
      get copyWith => __$$FetchAllInstituteFeesImplCopyWithImpl<
          _$FetchAllInstituteFeesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDashboard,
    required TResult Function() fetchCourses,
    required TResult Function(String instituteId) fetchStudents,
    required TResult Function(Map<String, dynamic> courseData) createCourse,
    required TResult Function(String courseId, Map<String, dynamic> lessonData)
        addLesson,
    required TResult Function(String enrollmentId, bool approved) verifyStudent,
    required TResult Function(Map<String, dynamic> placementData) postPlacement,
    required TResult Function(String instituteId, Map<String, dynamic> feeData)
        createFeeStructure,
    required TResult Function(String instituteId) fetchFeeStructures,
    required TResult Function(Map<String, dynamic> paymentData)
        recordFeePayment,
    required TResult Function(String instituteId, String studentId)
        fetchStudentFees,
    required TResult Function(String enrollmentId, double discountAmount)
        grantScholarship,
    required TResult Function(String instituteId, Map<String, dynamic> leadData)
        createStudentLead,
    required TResult Function(String instituteId) fetchStudentLeads,
    required TResult Function(String leadId, String status)
        updateStudentLeadStatus,
    required TResult Function(String enrollmentId) issueCertificate,
    required TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)
        submitPracticalScore,
    required TResult Function(String batchId, String studentId)
        fetchStudentPracticalScores,
    required TResult Function(String? instituteId) fetchPlacementListings,
    required TResult Function(
            String instituteId, Map<String, dynamic> listingData)
        createPlacementListing,
    required TResult Function(String batchId) fetchBatchDetails,
    required TResult Function(
            String batchId, String studentId, String date, String status)
        logAttendance,
    required TResult Function(String batchId, String date) fetchAttendanceLogs,
    required TResult Function(String instituteId) fetchAllInstituteFees,
  }) {
    return fetchAllInstituteFees(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDashboard,
    TResult? Function()? fetchCourses,
    TResult? Function(String instituteId)? fetchStudents,
    TResult? Function(Map<String, dynamic> courseData)? createCourse,
    TResult? Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult? Function(String enrollmentId, bool approved)? verifyStudent,
    TResult? Function(Map<String, dynamic> placementData)? postPlacement,
    TResult? Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult? Function(String instituteId)? fetchFeeStructures,
    TResult? Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult? Function(String instituteId, String studentId)? fetchStudentFees,
    TResult? Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult? Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult? Function(String instituteId)? fetchStudentLeads,
    TResult? Function(String leadId, String status)? updateStudentLeadStatus,
    TResult? Function(String enrollmentId)? issueCertificate,
    TResult? Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult? Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult? Function(String? instituteId)? fetchPlacementListings,
    TResult? Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult? Function(String batchId)? fetchBatchDetails,
    TResult? Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult? Function(String batchId, String date)? fetchAttendanceLogs,
    TResult? Function(String instituteId)? fetchAllInstituteFees,
  }) {
    return fetchAllInstituteFees?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDashboard,
    TResult Function()? fetchCourses,
    TResult Function(String instituteId)? fetchStudents,
    TResult Function(Map<String, dynamic> courseData)? createCourse,
    TResult Function(String courseId, Map<String, dynamic> lessonData)?
        addLesson,
    TResult Function(String enrollmentId, bool approved)? verifyStudent,
    TResult Function(Map<String, dynamic> placementData)? postPlacement,
    TResult Function(String instituteId, Map<String, dynamic> feeData)?
        createFeeStructure,
    TResult Function(String instituteId)? fetchFeeStructures,
    TResult Function(Map<String, dynamic> paymentData)? recordFeePayment,
    TResult Function(String instituteId, String studentId)? fetchStudentFees,
    TResult Function(String enrollmentId, double discountAmount)?
        grantScholarship,
    TResult Function(String instituteId, Map<String, dynamic> leadData)?
        createStudentLead,
    TResult Function(String instituteId)? fetchStudentLeads,
    TResult Function(String leadId, String status)? updateStudentLeadStatus,
    TResult Function(String enrollmentId)? issueCertificate,
    TResult Function(
            String batchId, String studentId, Map<String, dynamic> scoreData)?
        submitPracticalScore,
    TResult Function(String batchId, String studentId)?
        fetchStudentPracticalScores,
    TResult Function(String? instituteId)? fetchPlacementListings,
    TResult Function(String instituteId, Map<String, dynamic> listingData)?
        createPlacementListing,
    TResult Function(String batchId)? fetchBatchDetails,
    TResult Function(
            String batchId, String studentId, String date, String status)?
        logAttendance,
    TResult Function(String batchId, String date)? fetchAttendanceLogs,
    TResult Function(String instituteId)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchAllInstituteFees != null) {
      return fetchAllInstituteFees(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDashboard value) fetchDashboard,
    required TResult Function(_FetchCourses value) fetchCourses,
    required TResult Function(_FetchStudents value) fetchStudents,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_AddLesson value) addLesson,
    required TResult Function(_VerifyStudent value) verifyStudent,
    required TResult Function(_PostPlacement value) postPlacement,
    required TResult Function(_CreateFeeStructure value) createFeeStructure,
    required TResult Function(_FetchFeeStructures value) fetchFeeStructures,
    required TResult Function(_RecordFeePayment value) recordFeePayment,
    required TResult Function(_FetchStudentFees value) fetchStudentFees,
    required TResult Function(_GrantScholarship value) grantScholarship,
    required TResult Function(_CreateStudentLead value) createStudentLead,
    required TResult Function(_FetchStudentLeads value) fetchStudentLeads,
    required TResult Function(_UpdateStudentLeadStatus value)
        updateStudentLeadStatus,
    required TResult Function(_IssueCertificate value) issueCertificate,
    required TResult Function(_SubmitPracticalScore value) submitPracticalScore,
    required TResult Function(_FetchStudentPracticalScores value)
        fetchStudentPracticalScores,
    required TResult Function(_FetchPlacementListings value)
        fetchPlacementListings,
    required TResult Function(_CreatePlacementListing value)
        createPlacementListing,
    required TResult Function(_FetchBatchDetails value) fetchBatchDetails,
    required TResult Function(_LogAttendance value) logAttendance,
    required TResult Function(_FetchAttendanceLogs value) fetchAttendanceLogs,
    required TResult Function(_FetchAllInstituteFees value)
        fetchAllInstituteFees,
  }) {
    return fetchAllInstituteFees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDashboard value)? fetchDashboard,
    TResult? Function(_FetchCourses value)? fetchCourses,
    TResult? Function(_FetchStudents value)? fetchStudents,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_AddLesson value)? addLesson,
    TResult? Function(_VerifyStudent value)? verifyStudent,
    TResult? Function(_PostPlacement value)? postPlacement,
    TResult? Function(_CreateFeeStructure value)? createFeeStructure,
    TResult? Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult? Function(_RecordFeePayment value)? recordFeePayment,
    TResult? Function(_FetchStudentFees value)? fetchStudentFees,
    TResult? Function(_GrantScholarship value)? grantScholarship,
    TResult? Function(_CreateStudentLead value)? createStudentLead,
    TResult? Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult? Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult? Function(_IssueCertificate value)? issueCertificate,
    TResult? Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult? Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult? Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult? Function(_CreatePlacementListing value)? createPlacementListing,
    TResult? Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult? Function(_LogAttendance value)? logAttendance,
    TResult? Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult? Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
  }) {
    return fetchAllInstituteFees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDashboard value)? fetchDashboard,
    TResult Function(_FetchCourses value)? fetchCourses,
    TResult Function(_FetchStudents value)? fetchStudents,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_AddLesson value)? addLesson,
    TResult Function(_VerifyStudent value)? verifyStudent,
    TResult Function(_PostPlacement value)? postPlacement,
    TResult Function(_CreateFeeStructure value)? createFeeStructure,
    TResult Function(_FetchFeeStructures value)? fetchFeeStructures,
    TResult Function(_RecordFeePayment value)? recordFeePayment,
    TResult Function(_FetchStudentFees value)? fetchStudentFees,
    TResult Function(_GrantScholarship value)? grantScholarship,
    TResult Function(_CreateStudentLead value)? createStudentLead,
    TResult Function(_FetchStudentLeads value)? fetchStudentLeads,
    TResult Function(_UpdateStudentLeadStatus value)? updateStudentLeadStatus,
    TResult Function(_IssueCertificate value)? issueCertificate,
    TResult Function(_SubmitPracticalScore value)? submitPracticalScore,
    TResult Function(_FetchStudentPracticalScores value)?
        fetchStudentPracticalScores,
    TResult Function(_FetchPlacementListings value)? fetchPlacementListings,
    TResult Function(_CreatePlacementListing value)? createPlacementListing,
    TResult Function(_FetchBatchDetails value)? fetchBatchDetails,
    TResult Function(_LogAttendance value)? logAttendance,
    TResult Function(_FetchAttendanceLogs value)? fetchAttendanceLogs,
    TResult Function(_FetchAllInstituteFees value)? fetchAllInstituteFees,
    required TResult orElse(),
  }) {
    if (fetchAllInstituteFees != null) {
      return fetchAllInstituteFees(this);
    }
    return orElse();
  }
}

abstract class _FetchAllInstituteFees implements EducationEvent {
  const factory _FetchAllInstituteFees(final String instituteId) =
      _$FetchAllInstituteFeesImpl;

  String get instituteId;
  @JsonKey(ignore: true)
  _$$FetchAllInstituteFeesImplCopyWith<_$FetchAllInstituteFeesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
