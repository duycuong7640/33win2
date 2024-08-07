@extends('admins::layouts.app')
@section('content')
    <div class="content-wrapper">
        <form method="post" action="" class="forms-sample" id="form-edit">
            @csrf()
            <div class="row mb-4">
                <div class="col-12">
                    <div class="d-flex flex-column flex-md-row align-items-center">
                        <h4 class="mb-md-0 mb-4 mr-4">{{ !empty($data['common']['title']) ? $data['common']['title'] : '' }}</h4>
                        <div
                            class="wrapper ml-md-auto d-flex flex-column flex-md-row kanban-toolbar ml-n2 ml-md-0 mt-4 mt-md-0">
                            <div class="d-flex mt-4 mt-md-0">
                                <button type="submit" class="btn btn-success">
                                    {{ adminForm::FORM_HEAD['SAVE'] }}
                                </button>
                                <a href="{{ route('admin.index') }}">
                                    <button type="button" class="btn btn-inverse-dark">
                                        {{ adminForm::FORM_HEAD['CANCEL'] }}
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @if(Session::has('success'))
                <p class="alert alert-success">{{Session::get('success')}}</p>
            @endif
            @if(Session::has('error'))
                <p class="alert alert-danger">{{Session::get('error')}}</p>
            @endif
            <div class="row">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Google index</label>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input"
                                                       name="google_index"
                                                       value="1" {{ ($data['detail']->google_index == 1) ? 'checked' : '' }}>
                                                {{ adminForm::FIELD['ACTIVE'] }}
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input"
                                                       name="google_index"
                                                       value="0" {{ ($data['detail']->google_index == 0) ? 'checked' : '' }}>
                                                {{ adminForm::FIELD['NON_ACTIVE'] }}
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input type="text" name="name" value="{{ $data['detail']->name }}"
                                       class="form-control"
                                       placeholder=""/>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                        <input type="text" name="email" value="{{ $data['detail']->email }}"
                                               class="form-control" placeholder=""/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Hotline</label>
                                        <input type="text" name="hotline" value="{{ $data['detail']->hotline }}"
                                               class="form-control" placeholder=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Text chạy</label>
                                <input type="text" name="link3" value="{{ $data['detail']->link3 }}"
                                       class="form-control"
                                       placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Link đăng nhập</label>
                                <input type="text" name="link1" value="{{ $data['detail']->link1 }}"
                                       class="form-control"
                                       placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Link đăng ký</label>
                                <input type="text" name="link2" value="{{ $data['detail']->link2 }}"
                                       class="form-control"
                                       placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Link đăng ký trải nghiệm</label>
                                <input type="text" name="link4" value="{{ $data['detail']->link4 }}"
                                       class="form-control"
                                       placeholder=""/>
                            </div>
                            <div class="form-group" style="display: none;">
                                <label>Địa chỉ</label>
                                <input type="text" name="address" value="{{ $data['detail']->address }}"
                                       class="form-control" placeholder=""/>
                            </div>
                            <div class="form-group" style="display: none;">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Instagram</label>
                                        <input type="text" name="instagram" value="{{ $data['detail']->instagram }}"
                                               class="form-control" placeholder=""/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Facebook</label>
                                        <input type="text" name="facebook" value="{{ $data['detail']->facebook }}"
                                               class="form-control" placeholder=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="display: none;">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Youtube</label>
                                        <input type="text" name="youtube" value="{{ $data['detail']->youtube }}"
                                               class="form-control" placeholder=""/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Google</label>
                                        <input type="text" name="google" value="{{ $data['detail']->google }}"
                                               class="form-control" placeholder=""/>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Code header</label>
                                <textarea name="code_header" class="form-control"
                                          rows="25">{{ $data['detail']->code_header }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Code body</label>
                                <textarea name="code_body" class="form-control"
                                          rows="25">{{ $data['detail']->code_body }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Code footer</label>
                                <textarea name="code_footer" class="form-control"
                                          rows="25">{{ $data['detail']->code_footer }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Home Content</label>
                                <textarea class="ckeditor" class="form-control"
                                          name="home_content">{{ $data['detail']->home_content }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Content footer</label>
                                <textarea class="ckeditor" class="form-control"
                                          name="content_footer">{{ $data['detail']->content_footer }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Copyright</label>
                                <textarea class="form-control"
                                          name="copyright">{{ $data['detail']->copyright }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label>Title seo</label>
                            <input type="text" name="title_seo" value="{{ $data['detail']->title_seo }}"
                                   class="form-control" placeholder=""/>
                        </div>
                        <div class="form-group">
                            <label>Meta des</label>
                            <input type="text" name="meta_des" value="{{ $data['detail']->meta_des }}"
                                   class="form-control" placeholder=""/>
                        </div>
                        <div class="form-group">
                            <label>Meta key</label>
                            <input type="text" name="meta_key" value="{{ $data['detail']->meta_key }}"
                                   class="form-control" placeholder=""/>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-12">
                    <div class="d-flex flex-column flex-md-row align-items-center">
                        <div
                            class="wrapper ml-md-auto d-flex flex-column flex-md-row kanban-toolbar ml-n2 ml-md-0 mt-4 mt-md-0">
                            <div class="d-flex mt-4 mt-md-0">
                                <button type="submit" class="btn btn-success">
                                    {{ adminForm::FORM_HEAD['SAVE'] }}
                                </button>
                                <a href="{{ route('admin.index') }}">
                                    <button type="button" class="btn btn-inverse-dark">
                                        {{ adminForm::FORM_HEAD['CANCEL'] }}
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('validate')
    {!! JsValidator::formRequest('Modules\Admins\Http\Requests\Setting\EditRequest','#form-edit'); !!}
@endsection
