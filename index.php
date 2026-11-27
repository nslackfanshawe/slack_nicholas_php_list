<?php

require_once __DIR__ . '/includes/scripts/database.php';

$connection = getConnection();

$query = mysqli_query($connection, 'SELECT * FROM books ORDER BY id;');

$results = mysqli_fetch_all($query, MYSQLI_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>The Horus Heresy - Book Catalogue</title>

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

        <section id="intro" class="grid-con center-grid-con">

            <h1 class="col-span-full">The Horus Heresy Book Catalogue</h1>

            <p class="col-span-full">
                Explore the opening ten books of the Horus Heresy series.
                Discover the authors, stories and genres behind each novel.
            </p>

        </section>

        <section id="book-list" class="grid-con center-grid-con">

            <h2 class="col-span-full">Explore the Books</h2>

            <?php if (empty($results)): ?>

                <p class="col-span-full">No books are currently available.</p>

            <?php else: ?>

                <?php foreach ($results as $result): ?>

                    <article class="book-card col-span-full m-col-span-6 l-col-span-4">

                        <img
                            src="<?php echo htmlspecialchars($result['thumbnail']); ?>"
                            srcset="<?php echo htmlspecialchars($result['thumbnail']); ?> 300w,
                                    <?php echo htmlspecialchars($result['image']); ?> 800w"
                            sizes="(min-width: 1200px) 350px,
                                   (min-width: 768px) 45vw,
                                   90vw"
                            alt="<?php echo htmlspecialchars($result['title']); ?> book cover"
                            loading="lazy"
                        >

                        <h3>
                            <a href="details.php?id=<?php echo $result['id']; ?>">
                                <?php echo htmlspecialchars($result['title']); ?>
                            </a>
                        </h3>

                        <p class="book-author">
                            By <?php echo htmlspecialchars($result['author']); ?>
                        </p>

                        <p class="book-description">
                            <?php echo htmlspecialchars($result['description']); ?>
                        </p>

                    </article>

                <?php endforeach; ?>

            <?php endif; ?>

        </section>

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