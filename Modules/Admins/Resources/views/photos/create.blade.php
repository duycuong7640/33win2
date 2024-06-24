@extends('admins::layouts.app')
@section('content')
    <div class="content-wrapper">
        <form method="post" action="" class="forms-sample" id="form-create">
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
                                <a href="{{ route('admin.photo.index') }}">
                                    <button type="button" class="btn btn-inverse-dark">
                                        {{ adminForm::FORM_HEAD['CANCEL'] }}
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-9 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input type="text" name="title" class="form-control" placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Link</label>
                                <input type="text" name="text" value="#" class="form-control" placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Trạng thái</label>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="status" value="1"
                                                       checked>
                                                {{ adminForm::FIELD['ACTIVE'] }}
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="status"
                                                       value="0">
                                                {{ adminForm::FIELD['NON_ACTIVE'] }}
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @if($errors->has('error'))
                                <p class="alert alert-danger">{{$errors->first('error')}}</p>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-3 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Thumbnail</label>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="input-group">
                                                <span class="input-group-btn">
                                                    <a data-input="thumbnail" data-preview="holder"
                                                       class="lfm btn btn-primary">
                                                        <i class="fa fa-picture-o"></i> CHOOSE
                                                    </a>
                                                </span>
                                            <input id="thumbnail" class="form-control" type="text" name="thumbnail"
                                                   readonly>
                                        </div>
                                        <img id="holder" style="margin-top:15px;max-height:100px;">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="favicon-logo">
                                <label>Favicon</label>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="input-group">
                                                <span class="input-group-btn">
                                                    <a data-input="thumbnail2" data-preview="holder2"
                                                       class="lfm btn btn-primary">
                                                        <i class="fa fa-picture-o"></i> CHOOSE
                                                    </a>
                                                </span>
                                            <input id="thumbnail2" class="form-control" type="text" name="thumbnail2"
                                                   readonly>
                                        </div>
                                        <img id="holder2" style="margin-top:15px;max-height:100px;">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Vị trí</label>
                                <input type="number" name="sort" value="0" class="form-control" placeholder=""/>
                            </div>
                            <div class="form-group">
                                <label>Thể loại</label>
                                <select name="type" class="form-control col-12" id="select-type">
                                    @foreach(dataPhoto::TYPE as $row)
                                        <option value="{{ $row }}">{{ dataPhoto::TYPE_NAME[$row] }}</option>
                                    @endforeach
                                </select>
                            </div>
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
                                <a href="{{ route('admin.photo.index') }}">
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
    {!! JsValidator::formRequest('Modules\Admins\Http\Requests\Photo\CreateRequest','#form-create'); !!}
@endsection

@section('scripts')
    <script type="text/javascript">
        function checkValueAndVisibility() {
            var selectedValue = document.getElementById("select-type").value;
            var hiddenElement = document.getElementById("favicon-logo");

            if (selectedValue === "logo") {
                hiddenElement.style.display = "block";
            } else {
                hiddenElement.style.display = "none";
            }
        }

        setInterval(checkValueAndVisibility, 1000);
    </script>
@endsection
