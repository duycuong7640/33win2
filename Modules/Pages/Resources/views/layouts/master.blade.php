<!DOCTYPE html>
<head>
    @include('pages::elements.extend.meta')
    @include('pages::elements.extend.style')
    {!! !empty($data['commonSetting']['setting']['code_header']) ? $data['commonSetting']['setting']['code_header'] : '' !!}
</head>
<body>
{!! !empty($data['commonSetting']['setting']['code_body']) ? $data['commonSetting']['setting']['code_body'] : '' !!}
@yield('content')
@include('pages::elements.extend.script')
{!! !empty($data['commonSetting']['setting']['code_footer']) ? $data['commonSetting']['setting']['code_footer'] : '' !!}
</body>
</html>
