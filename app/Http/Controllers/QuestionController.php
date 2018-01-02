<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use App\Mail\ActivationMail;
use App\User;
use App\Modules;
use App\Company;
use App\UserProduct;
use App\Assessment;
use App\Header;
use App\Models\Question;
use App\Models\QuestionsOption;
use Session;

class QuestionController extends Controller
{

    public function __construct()
    {
        $this->middleware('isadmin');
        $this->middleware('logusersactivity');
        $this->middleware('checksubdomain');
    }


    public function index($id)
    {
            $quetions = DB::table('Questions')
                      ->select('*')
                      ->leftJoin('Header', 'Questions.hid', '=', 'Header.id')
                      ->leftJoin('Assessment', 'Assessment.id', '=', 'Header.aid')
                      ->where('Assessment.id', $id)->get();
        $company =  Company::where('id', '=', Auth::user()->cid)->first();
        $header = Header::get();
        return view('header',['quetions' => $quetions,'header'=> $header,'company' => $company, 'assesmentId'=>$id]);
    }

    public function editHeader($id, $hid)
    {

     $quetions = DB::table('Questions')
                      ->select('*')
                      ->leftJoin('Header', 'Questions.hid', '=', 'Header.id')
                      ->leftJoin('Assessment', 'Assessment.id', '=', 'Header.aid')
                      ->where('Assessment.id', $id)
                      ->where('Questions.hid', $hid)->get();
        // $quetions = Question::where('hid', $hid)->get();
        $company =  Company::where('id', '=', Auth::user()->cid)->first();
        $header = Header::get();
        return view('header',['quetions' => $quetions,'header'=> $header,'company' => $company, 'assesmentId'=>$id]);
    }

    // public function editQuestionid(Request $request,$id)
    // {
    //     echo "hi";
    //     echo $id;
    //     $quetions = Question::where('id', $id)->get();
    //     print_r($quetions);

    // }

    /*public function show($id)
    {

        $question = Question::findOrFail($id);

        $questionData = DB::table('Questions')
                  ->select('*')
                  ->leftJoin('QuestionsOption', 'QuestionsOption.question_id', '=', 'Questions.id')
                  ->where('Questions.id', $id)
                  ->get();
        return view('header', ['questions' => $questionData]);
    }*/


    public function store(Request $request, $assesmentId, $id)
    {

        $data = input::all();

        $question = Question::create([
                'topic'=>$data['topic'],
                'question_text'=>$data['question_text'],
                'question_data'=>$data['question_data'],
                'answer_explanation'=>$data['answer_exp'],
                'hid' => $id,
                ]);

            foreach ($data['option'] as $key => $value) {
                QuestionsOption::where('id', $id )->delete();
                QuestionsOption::create([
                    'question_id' => $question->id,
                    'value'      => $value,
                ]);
            }
    }


    public function update($request, $id)
    {
        $question = Question::findOrFail($id);

          $question = Question::where('id', $id)->update([
                'topic'=>$data['topic'],
                'question_text'=>$data['question_text'],
                'question_data'=>$data['question_data'],
                'answer_explanation'=>$data['answer_exp'],
                ]);

        $question = QuestionsOption::findOrFail($id);
        $question->delete();

         foreach ($data['option'] as $key => $value) {
                //$status = $request->input('correct') == $key ? 1 : 0;
                QuestionsOption::update([
                    'question_id' => $question->id,
                    'option'      => $value,

            ]);
        }

       // return redirect()->route('questions.index');
    }


    public function destroy($id)
    {
        $question = Question::findOrFail($id);
        $question->delete();
        return back();
    }


}
