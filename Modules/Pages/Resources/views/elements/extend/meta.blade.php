<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
@if(isset($data['commonSetting']['setting']['google_index']) && !$data['commonSetting']['setting']['google_index'])
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
@endif
<meta name="csrf-token" content="{{ csrf_token() }}">
<link type="image/x-icon" href="{!! !empty($data['commonSetting']["logo"]->thumbnail2) ? $data['commonSetting']["logo"]->thumbnail2 : '' !!}" rel="icon">
<link type="image/x-icon" href="{!! !empty($data['commonSetting']["logo"]->thumbnail2) ? $data['commonSetting']["logo"]->thumbnail2 : '' !!}" rel="shortcut icon">
<title>{{ !empty($data['common']['title_seo']) ? $data['common']['title_seo'] : '' }}</title>
<meta name="keywords" content="{{ !empty($data['common']['meta_key']) ? $data['common']['meta_key'] : '' }}"/>
<meta name="description" content="{{ !empty($data['common']['meta_des']) ? $data['common']['meta_des'] : '' }}"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">


