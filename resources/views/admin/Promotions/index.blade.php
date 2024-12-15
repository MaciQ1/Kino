<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Promocje</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    @include('shared.navbar')
</head>

<body>
    <header>
        <h1>Promocje</h1>
    </header>

    @include('shared.navbar2')

    <div class="container mt-5 mb-5">
        <div class="row mb-2">
            <a href="{{ route('promotions.create') }}">Dodaj nową promocję</a>
        </div>
        @include('shared.session-error')
        <div class="row">
            <div class="table-responsive-sm">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Zniżka</th>
                            <th scope="col">Czas rozpoczęcia</th>
                            <th scope="col">Czas zakończenia</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($promotions as $promotion)
                            <tr>
                                <td>{{ $promotion->id }}</td>
                                <td>{{ $promotion->discount }}%</td>
                                <td>{{ $promotion->start_time }}</td>
                                <td>{{ $promotion->end_time }}</td>
                                <td>
                                    <a href="{{ route('promotions.edit', $promotion) }}">Edycja</a>
                                </td>
                                <td>
                                    <form method="POST" action="{{ route('promotions.destroy', $promotion->id) }}">
                                        @csrf
                                        @method('DELETE')
                                        <input type="submit" class="btn btn-danger" value="Usuń"
                                            style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;" />
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <th scope="row" colspan="6">Brak promocji.</th>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    @include('shared.footer')
</body>

</html>
