<?php
$ext = get_loaded_extensions();
asort($ext);
foreach ($ext as $ref) {
    echo $ref . "\n<br>";
}
