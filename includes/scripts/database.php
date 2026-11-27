<?php

function getConnection() {
    $connection = mysqli_connect(
        'localhost',
        'root',
        '',
        'nicholas_slack_horus_heresy'
    );

    mysqli_set_charset($connection, 'utf8mb4');

    return $connection;
}