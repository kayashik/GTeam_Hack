<!DOCTYPE html>
<html lang="ru">
<head>

    @include('layout.meta')

    <title>
        @yield('title') :: {{ config('app.name') }}
    </title>

    @include('layout.styles')

</head>
<body class="fixed-header">

    <!-- START PAGE-CONTAINER -->
    <div class="page-container">
        @yield('header')
       <?php // @include('layout.header') ?>

        <div class="page-content-wrapper">

            <div class="content">
                    @yield('content')

                </div>
            </div>

            @include('layout.footer')

        </div>


    @include('layout.scripts')

</body>
</html>
