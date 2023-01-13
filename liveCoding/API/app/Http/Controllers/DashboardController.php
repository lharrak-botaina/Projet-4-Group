<?php

namespace App\Http\Controllers;

use App\Models\AnneFormation;
use App\Models\Apprenant;
use App\Models\ApprenantPreparationBrief;
use App\Models\Brief;
use App\Models\Groupes;
use App\Models\GroupesPreparationBrief;
use App\Models\PreparationBrief;
use App\Models\Tache;
use Illuminate\Http\Request;


class DashboardController extends Controller
{
    public function years(){
        $years=AnneFormation::all();
        return $years;
    }
    public function formation_year(Request $request,$id){
        $year=AnneFormation::findOrFail($id);
        $group=Groupes::where('Annee_formation_id',$year->id)->get();
        // $studentCount = $group->students->count();

        $task_done=Tache::where('Etat','=','terminer')->get()->count();
        $task_pause=Tache::where('Etat','=','en pouse')->get()->count();
        $task_inProgress=Tache::where('Etat','=','en cours')->get()->count();

        $allTasks = ($task_done + $task_pause + $task_inProgress);
        $group_av=($task_done/$allTasks)*100;
        return[
            'year'=>$year,
            'group'=>$group,
            'group_av'=>$group_av,
            // 'studentCount' => $studentCount,
        ];


    }



}









