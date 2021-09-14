<?php
$exchanges = Transfers::all(); //get all data from Transfer table

foreach ($exchanges as $exchange) {
    $student = Student::where('student_id','=',$exchange->studentid)->first();
    $application = Application::where('student_id','=',$student->student_id)->first();
    $studentAddress = ForeignAddress::where('studentid','=',$student->student_id)->first();
    $newStudentAddress = new Address([
    'street' => $studentAddress->foreign_street == null ? "" : $studentAddress->foreign_street,
    'zipcode' => $studentAddress->foreign_zip == null ? 0 : $studentAddress->foreign_zip,
    'city' => $studentAddress->foreign_city == null ? "" : $studentAddress->foreign_city,
    'state' => $studentAddress->foreign_state == null ? "" : $studentAddress->foreign_state,
    'country_id' => Country::where('name', '=', $studentAddress->foreign_country)->first()->country_id,
    'phone_no' => $studentAddress->foreign_phone == null ? "" : $studentAddress->foreign_phone,
    'additional' => null,
    'student_id' => $student->student_id]); 
    $newStudentAddress->save();
    $newExchange = new Exchange([
    'application_id'=> $application->application_id,
    'foreign_address_id'=> $newStudentAddress->address_id,
    'foreign_uni_id'=> 1
                                ]);
        $newExchange->save();
    $studyHostOld = StudyHostOld::where('studentid', '=', $application->student_id)->first();
    $newStudyHost = new StudyHost ([
    'exchange_id'=> $newExchange->exchange_id,
    'foreign_uni_id'=> $studyHostOld->foreign_university,
    'foreign_degree_id'=> $studyHostOld->foreign_degree,
    'foreign_course_id'=> $studyHostOld->foreign_course,
    'foreign_num_planed_exams'=> $studyHostOld->foreign_num_planed_exams == null ? 0 : $studyHostOld->foreign_num_planed_exams,
    'foreign_matno'=> $studyHostOld->foreign_matno == null ? 0 : $studyHostOld->foreign_matno
    ]);
        $newStudyHost->save();
}
