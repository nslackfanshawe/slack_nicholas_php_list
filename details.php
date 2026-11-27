<?php

require_once __DIR__ . '/includes/scripts/database.php';

$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

$book = null;
$genres = [];
$error = '';

if (!$id || $id < 1) {

    $error = 'Please select a valid book.';
    http_response_code(400);

} else {

    $connection = getConnection();

    $statement = mysqli_prepare(
        $connection,
        'SELECT * FROM books WHERE id = ?;'
    );

    mysqli_stmt_execute($statement, [$id]);

    $queryResult = mysqli_stmt_get_result($statement);
    $book = mysqli_fetch_assoc($queryResult);

    mysqli_stmt_close($statement);

    if (!$book) {

        $error = 'The selected book could not be found.';
        http_response_code(404);

    } else {

        $genreStatement = mysqli_prepare(
            $connection,
            'SELECT genres.name
            FROM genres
            INNER JOIN book_genre
            ON genres.id = book_genre.genre_id
            WHERE book_genre.book_id = ?
            ORDER BY genres.name;'
        );

        mysqli_stmt_execute($genreStatement, [$id]);

        $genreResult = mysqli_stmt_get_result($genreStatement);
        $genres = mysqli_fetch_all($genreResult, MYSQLI_ASSOC);

        mysqli_stmt_close($genreStatement);

    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>
        <?php if ($book): ?>

            <?php echo htmlspecialchars($book['title']); ?> - The Horus Heresy

        <?php else: ?>

            Book Not Found - The Horus Heresy

        <?php endif; ?>
    </title>

    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>

    <header id="main-header">
        <div class="grid-con center-grid-con">

            <a href="index.php" class="col-span-full" id="brand">
                The Horus Heresy
            </a>

        </div>
    </header>

    <main>

        <div class="grid-con center-grid-con">

            <a href="index.php" id="back-link" class="col-span-full">
                Back to Book Catalogue
            </a>

        </div>

        <?php if ($error): ?>

            <section id="error-message" class="grid-con center-grid-con">

                <h1 class="col-span-full">Book Unavailable</h1>

                <p class="col-span-full">
                    <?php echo htmlspecialchars($error); ?>
                </p>

            </section>

        <?php else: ?>

            <section id="book-details" class="grid-con center-grid-con">

                <h1 class="col-span-full">
                    <?php echo htmlspecialchars($book['title']); ?>
                </h1>

                <div id="book-image" class="col-span-full m-col-span-5 l-col-span-4">

                    <img
                        src="<?php echo htmlspecialchars($book['image']); ?>"
                        srcset="<?php echo htmlspecialchars($book['thumbnail']); ?> 300w,
                                <?php echo htmlspecialchars($book['image']); ?> 800w"
                        sizes="(min-width: 1200px) 400px,
                               (min-width: 768px) 40vw,
                               90vw"
                        alt="<?php echo htmlspecialchars($book['title']); ?> book cover"
                    >

                </div>

                <div id="book-info" class="col-span-full m-col-span-7 l-col-span-8">

                    <p class="book-author">
                        By <?php echo htmlspecialchars($book['author']); ?>
                    </p>

                    <h2>Synopsis</h2>

                    <p class="book-synopsis">
                        <?php echo nl2br(htmlspecialchars($book['synopsis'])); ?>
                    </p>

                    <h2>Genres</h2>

                    <?php if (empty($genres)): ?>

                        <p>No genres are currently available.</p>

                    <?php else: ?>

                        <ul id="genre-list">

                            <?php foreach ($genres as $genre): ?>

                                <li>
                                    <?php echo htmlspecialchars($genre['name']); ?>
                                </li>

                            <?php endforeach; ?>

                        </ul>

                    <?php endif; ?>

                </div>

            </section>

        <?php endif; ?>

    </main>

    <footer id="main-footer">
        <div class="grid-con center-grid-con">

            <p class="col-span-full">
                &copy; 2026 Nicholas Slack
            </p>

        </div>
    </footer>

</body>
</html>