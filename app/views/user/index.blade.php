<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>
<?php foreach($users as $user): ?>
    <p>{{ $users->email }}</p>
    {{--<p><?php echo $users->email; ?></p>--}}
<?php endforeach; ?>
</body>
</html>