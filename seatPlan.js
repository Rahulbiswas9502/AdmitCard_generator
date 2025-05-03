document.addEventListener('DOMContentLoaded', () => {
    const admitCardBtn = document.getElementById('admitCardBtn');

    admitCardBtn.addEventListener('click', () => {
        // Navigate to the admit card page
        // Replace 'admit-card.html' with the actual path to your admit card page
        window.location.href = 'index.php';
    });
});