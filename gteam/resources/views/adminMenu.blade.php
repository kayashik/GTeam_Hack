@extends('layout.default')

@section('title', 'Menu')

@section('header')
    @include('layout.header')
@endsection

@section('breadcrumb')
    <div class="pull-left">

    </div>
@stop

@section('content')
    <div class="col-md-offset-1 col-md-3">
    <div class="form-group">
        <label for="sel1">Oficces:</label>
        <select class="form-control" id="sel1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
        </select>
    </div>
    </div>
    <div class="clearfix"></div>

        <div class="row">
            <div class="clearfix"></div>
        <div class="col-md-offset-1 col-md-10">
            <table data-sort-column="0" data-sort-order="asc" class="datatable table table-hover no-footer" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Last name</th>
                    <th>Age</th>
                    <th>User role</th>
                    <th>Email address</th>
                    <th>Office</th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                @if(isset($item))
                @foreach($items as $item)
                    @php

                    @endphp
                    <tr>
                        <td>{{ $item->question }}</td>
                        <td>{{ $item->answer }}</td>
                        <td>{{ $item->created_at }}</td>
                        <td>
                            @include('dashboard.layouts.partials.button-list-delete', [
                                'link' => route('dashboard.faqs.delete', $item->id)
                            ])
                            @include('dashboard.layouts.partials.button-list-edit', [
                                'link' => route('dashboard.faqs.edit', $item->id)
                            ])
                        </td>
                    </tr>
                @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@endsection
