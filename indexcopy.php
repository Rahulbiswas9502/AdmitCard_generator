<?php
include 'db_connect.php';

$student_data = null;
$error = null;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $reg_number = $_POST['reg_number'];
    $session = $_POST['session'];

    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("SELECT * FROM students WHERE registration_number = ? and session = ?" );
    $stmt->bind_param("ss",$reg_number, $session); // "ss" for two strings
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $student_data = $result->fetch_assoc();
    } else {
        $error = "No record found for the provided registration number and session.";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seat Allocation and Admit Card</title>
    <link rel="stylesheet" href="./copy.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <h1>Admission Portal</h1>
        </div>
        <ul class="nav-links">
            <li><a href="./first.html">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
    
    <div class="container" id="formContainer" style="<?php echo ($student_data ? 'display: none;' : 'display: block;'); ?>">
        <h1>Seat and Admit Card</h1>
        <form action="" method="post">
            <label for="reg_number">Registration Number:</label>
            <input type="text" id="reg_number" name="reg_number" required>
            <br>
            <label for="session">Session:</label>
            <input type="text" id="session" name="session" required>
            <br>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>

    <div class="container admit-card" id="admitCard" style="<?php echo ($student_data ? 'display: block;' : 'display: none;'); ?>">
        <?php if ($student_data): ?>
            <h2>Seat Allocation</h2>

            <div class="admit-details">
                <p><strong>Seat Number:</strong> <?php echo htmlspecialchars($student_data['seat_number']); ?></p>
                <p><strong>Exam Center:</strong> <?php echo htmlspecialchars($student_data['exam_center']); ?></p>
            </div>

            <h2>Admit Card Preview</h2>
            
            <div class="admit-details">
                <p><strong>Name:</strong> <?php echo htmlspecialchars($student_data['name']); ?></p>
                <p><strong>Registration Number:</strong> <?php echo htmlspecialchars($student_data['registration_number']); ?></p>
                <p><strong>Session:</strong> <?php echo htmlspecialchars($student_data['session']); ?></p>
                <p><strong>Department:</strong> <?php echo htmlspecialchars($student_data['dept']); ?></p>
                <p><strong>Exam Name:</strong> <?php echo htmlspecialchars($student_data['exam_name']); ?></p>
                <p><strong>Exam Date:</strong> <?php echo htmlspecialchars($student_data['exam_date']); ?></p>
                <p><strong>Exam Time:</strong> <?php echo htmlspecialchars($student_data['exam_time']); ?></p>
            </div>

            <div class="admit-buttons">
                <button onclick="resetForm()" class="btn">Back</button>
                <a href="generate_admit_card.php?reg_number=<?php echo urlencode($student_data['registration_number']); ?>&session=<?php echo urlencode($student_data['session']); ?>" class="btn">Download Admit Card</a>
            </div>
        <?php elseif ($error): ?>
            <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
        <?php endif; ?>
    </div>

    <footer class="footer">
        <div class="footer-content">
            <p>&copy; 2025 Admission Portal.  Made by Sukanta Datta and Rahul Biswas.</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
            </div>
        </div>
    </footer>

    <script>
        function resetForm() {
            document.getElementById("formContainer").style.display = "block";
            document.getElementById("admitCard").style.display = "none";
            document.getElementById("reg_number").value = "";
            document.getElementById("session").value = "";
        }
    </script>
</body>
</html>

<?php $conn->close(); ?>