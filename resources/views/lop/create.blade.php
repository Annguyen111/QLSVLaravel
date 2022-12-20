@extends('layout.master')
@section('title','Thêm lớp')
@section('content')
        
  <div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Thêm lớp</h3>
                <p class="text-subtitle text-muted">Multiple form layouts, you can use</p>
  
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Thêm lớp</li>
                    </ol>
                </nav>
            </div>
        </div>
  
    </div>
  
    <section id="multiple-column-form">
        <div class="row match-height">
          <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Điền thông tin</h4>
                </div>
                <div class="card-content">
                        @if (Session::has('success'))
                        <div class="alert alert-success alert-dismissible show fade m-4">
                          {{ Session::get('success') }}
                          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                      </div>
                    @endif
                    @include('notification')
                    <div class="card-body">
                        <form action="{{ route('lop.store') }}" method="post" class="form form-horizontal">
                          @csrf
                            <div class="form-body">
                                <div class="row">
                                      <div class="col-md-4">
                                        <label for="tenkhoa">Khoa</label>
                                      </div>
                                      <div class="col-md-8 form-group">
                                        
                                        <select name="khoa" id="lop" class="form-control">
                                          @foreach ($khoas as $khoa)
                                              <option value="{{ $khoa->id }}">
                                                  {{ $khoa->tenkhoa }}
                                              </option>
                                          @endforeach
                                      </select>
                                    </div>
                                    <div class="col-md-4">
                                      <label for="tenkhoa">Tên lớp</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                      
                                      <input type="text" class="form-control" name="tenlop" id="name"
                                      placeholder="Nhập tên lớp">
                                  </div>
                                    
                                    
                                    <div class="col-sm-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                        <button type="reset"
                                            class="btn btn-light-secondary me-1 mb-1">Reset</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    
  </div>    


@endsection