@extends('layouts.userLayout')
@section('content')
<div class="col-md-10 col-md-offset-1">
  <div class="panel panel-default">
        <div class="panel-heading"><h1>Introduction</h1></div>

        <div class="panel-body">
            <div class="col-md-offset-2">
            <iframe src='https://siuecougars-my.sharepoint.com/personal/brfoste_siue_edu/_layouts/15/WopiFrame.aspx?sourcedoc={5673d633-2bb7-4e07-8a24-7ed97f0ace4f}&action=embedview&wdAr=1.3333333333333333' width='1026px' height='793px' frameborder='0'>This is an embedded <a target='_blank' href='https://office.com'>Microsoft Office</a> presentation, powered by <a target='_blank' href='https://office.com/webapps'>Office Online</a>.</iframe>
            </<div>
            <div>
                <?php
                echo '<div class="pull-right">';
                $scenario->createStartForm();
                echo "<h2><a href='#' id='$scenario->id' class='start-scenario'>Continue to $scenario->name</a></h2>";
                echo '</div>';
                ?>
            </div>
        </div>
    </div>
</div>

@endsection
