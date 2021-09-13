<?php
$applications = Application::where('created_at','>=', (new DateTime())->format('Y-m-d H:i:s'))->get(); //get all data from user table

foreach ($applications as $application) {
    $studyHomeOld = StudyHomeOld::where('studentid', '=', $application->student_id)->first();
    $newStudyHome = new StudyHome (['application_id'=> $application->application_id,
    'home_university_id'=> $studyHomeOld->home_university,
    'home_degree_id'=> $studyHomeOld->home_degree,
    'home_course_id'=> $studyHomeOld->home_course ,
    'home_matno'=> $studyHomeOld->home_matno,
    'home_cgpa'=> $studyHomeOld->home_cgpa == null ? 0 : $studyHomeOld->home_cgpa,
    'home_credits'=> $studyHomeOld->home_credits == null ? 0 : $studyHomeOld->home_credits,
    'home_semester'=> $studyHomeOld->home_semester == null ? 0 : $studyHomeOld->home_semester,
    'home_enrollment_date'=> null,
    'updated_at'=> null
    ]);
        $newStudyHome->save();
}
