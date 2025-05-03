<?php
include 'db_connect.php';
require('./fpdf186/fpdf.php');

if (isset($_GET['reg_number']) && isset($_GET['session'])) {
    $reg_number = $_GET['reg_number'];
    $session = $_GET['session'];

    // Use prepared statements for security
    $stmt = $conn->prepare("SELECT * FROM students WHERE registration_number = ? AND session = ?");
    $stmt->bind_param("ss", $reg_number, $session);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $student_data = $result->fetch_assoc();

        // Create PDF
        $pdf = new FPDF();
        $pdf->AddPage();
        $pdf->Rect(5, 5, 200, 287, 'D');
        // Border
        $pdf->SetDrawColor(0, 0, 0); // black border
        $pdf->Rect(5, 5, 200, 140, 'D');

                // Institute Name
                $pdf->SetFont('Arial', 'B', 16);
                $pdf->Cell(0, 10, 'Rangamati science and Technology University', 0, 1, 'C');
                $pdf->SetFont('Arial', 'B', 14);
                $pdf->Cell(0, 10, 'Department of Computer Science and Engineering', 0, 1, 'C');
                $pdf->Image('C:\xampp\htdocs\seat_allocation\rlogo.png', 170, 5, 30);
                // Admit Card Title
        $pdf->Ln(5);
        $pdf->SetFont('Arial', 'B', 14);
        $pdf->SetFillColor(90, 90, 90); 
        $pdf->SetTextColor(255, 255, 255); // White text
        $pdf->Cell(0, 10, 'ADMIT CARD', 0, 1, 'C', true);
        $pdf->Ln(5);
        $pdf->SetTextColor(0, 0, 0); // Reset text color to black
        $pdf->SetFont('Arial', '', 12);

        //$col1_width = 50;
        //$col2_width = 100;
        
        

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(90, 10, 'Name of Student:', 1, 0);
        $pdf->Cell(90, 10, $student_data['name'], 1, 1);
       // $pdf->Cell(0, 10, 'Name: ' . $student_data['name'], 0, 1);
       $pdf->Cell(90, 10, 'Registration Number:   '.$student_data['registration_number'], 1, 0);
        $pdf->Cell(90, 10, 'Session:   '.$student_data['session'], 1, 1);

        //$pdf->Cell(0, 10, 'Registration Number: ' . $student_data['registration_number'], 0, 1);
        //$pdf->Cell(0, 10, 'Session: ' . $student_data['session'], 0, 1);
        $pdf->Cell(180, 10, 'Exam Name: ' . $student_data['exam_name'], 1, 1);
        $pdf->Cell(90, 10, 'Exam Date: ' . $student_data['exam_date'], 1, 0);
        $pdf->Cell(90, 10, 'Exam Time: ' . $student_data['exam_time'], 1, 1);
        $pdf->Cell(90, 10, 'Exam Center: ' . $student_data['exam_center'], 1, 0);
        $pdf->Cell(90, 10, 'Seat Number: ' . $student_data['seat_number'], 1, 1);

        $pdf->Ln(10);
        $pdf->SetFont('Arial', 'I', 10);
        $pdf->Cell(0, 10, 'Please bring this admit card to the exam center.', 0, 1, 'C');
        $pdf->Cell(0, 10, 'Signature of Authority: ____________________', 0, 1, 'R');

        // Output PDF for download
        $pdf->Output('D', 'admit_card.pdf');
    } else {
        echo "No record found.";
    }
    $stmt->close();
} else {
    echo "Invalid request.";
}

$conn->close();
?>