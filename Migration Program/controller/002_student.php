<?php
$students = StudentNew::all(); //get all data from user table

foreach ($students as $student) {
    $studentAddress = HomeAddress::where('studentid','=',$student->personalid)->first();
    $newStudentAddress = new Address([
'street' => $studentAddress->home_street == null ? "" : $studentAddress->home_street,
'zipcode' => $studentAddress->home_zip == null ? 0 : $studentAddress->home_zip,
'city' => $studentAddress->home_city == null ? "" : $studentAddress->home_city,
'state' => $studentAddress->home_state == null ? "" : $studentAddress->home_state,
'country_id' => Country::where('name', '=', $studentAddress->home_country)->first()->country_id,
'phone_no' => $studentAddress->home_phone == null ? "" : $studentAddress->home_phone,
'additional' => null,
'student_id' => $student->personalid]); 
    $newStudentAddress->save();
    $newStudent = new Student(['student_id' => $student->personalid
,'user_id' => $student->personalid
,'birthdate' => $student->birthday
,'nationality_country_id' => Country::where('name', '=', $student->nationality)->first()->country_id
,'home_address_id' => $newStudentAddress->address_id
,'created_at' => $currentDateTime
,'updated_at' => $currentDateTime
,'student_status_id' => MapOldStatus($student->overall_status)
    ]);
    $newStudent->save();
    $newStudentApplication = new Application([
'exchange_period_id' => null,
'student_id' => $student->personalid,
'intention_id' => MapOldIntention($student->intention),
'applied_degree_id' => null,
'success_factor' => 0,
'created_at'=> $currentDateTime,
'updated_at'=> $currentDateTime,
'home_address_id' => $newStudentAddress->address_id,
'completed' => 0]);
    $newStudentApplication->save();
    
}
