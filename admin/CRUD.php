<?php
require_once __DIR__ . '/../actions/connect_bd.php';

$table = $_REQUEST['table_name'] ?? 'user';
$edit_id = $_GET['edit'] ?? null;
$row_to_edit = $edit_id ? $conn->query("SELECT * FROM $table WHERE id=$edit_id")->fetch_assoc() : null;

// Save Logic (Insert and Update)
if (isset($_POST['save'])) {
    $fields = $_POST['f'];
    $id = $_POST['id'] ?? null;

    if ($id) { // Update existing
        foreach ($fields as $col => $val) { $set[] = "$col='" . $conn->real_escape_string($val) . "'"; }
        $sql = "UPDATE $table SET " . implode(',', $set) . " WHERE id=$id";
    } else { // Insert new
        $cols = implode(",", array_keys($fields));
        $vals = "'" . implode("','", array_map([$conn, 'real_escape_string'], $fields)) . "'";
        $sql = "INSERT INTO $table ($cols) VALUES ($vals)";
    }
    $conn->query($sql);
    header("Location: ?table_name=$table"); 
}

//  Delete Logic
if (isset($_GET['delete'])) {
    $conn->query("DELETE FROM $table WHERE id=" . $_GET['delete']);
    header("Location: ?table_name=$table");
}
?>

<form method="get">
    <select name="table_name" onchange="this.form.submit()">
        <option value="user" <?= $table=='user'?'selected':'' ?>>Users</option>
        <option value="ingredient" <?= $table=='ingredient'?'selected':'' ?>>Ingredients</option>
    </select>
</form>

<hr>

<form method="post">
    <input type="hidden" name="table_name" value="<?= $table ?>">
    <?php if($edit_id): ?> <input type="hidden" name="id" value="<?= $edit_id ?>"> <?php endif; ?>
    
    <?php
    $res = $conn->query("DESCRIBE $table");
    while($col = $res->fetch_assoc()): 
        if($col['Extra'] == 'auto_increment') continue;
        $name = $col['Field'];
    ?>
        <label><?= $name ?>:</label>
        <input type="text" name="f[<?= $name ?>]" value="<?= $row_to_edit[$name] ?? '' ?>" required><br>
    <?php endwhile; ?>
    <button type="submit" name="save">SAVE RECORD</button>
</form>

<hr>

<table>
    <?php
    $data = $conn->query("SELECT * FROM $table");
    while($row = $data->fetch_assoc()): ?>
        <tr>
            <?php foreach($row as $v) echo "<td>$v</td>"; ?>
            <td>
                <a href="?table_name=<?= $table ?>&edit=<?= $row['id'] ?>">Edit</a>
                <a href="?table_name=<?= $table ?>&delete=<?= $row['id'] ?>" onclick="return confirm('Delete?')">Del</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>