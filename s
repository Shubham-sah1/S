<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shubham's Friends</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        select {
            padding: 10px;
            font-size: 16px;
            width: 90%;
            max-width: 300px;
        }
        .message {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
        }
        .friend-image {
            margin-top: 20px;
            width: 100%;
            max-width: 300px;
            height: auto;
            display: none;
        }
        /* Responsive Design */
        @media (max-width: 600px) {
            h1 {
                font-size: 22px;
            }
            .message {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

    <h1>Welcome, Shubham!</h1>

    <label for="friends">Select a Friend:</label>
    <select id="friends" onchange="showMessage()">
        <option value="">--Choose a Friend--</option>
        <option value="atulya">Atulya</option>
        <option value="airav">Airav</option>
        <option value="aditya">Aditya</option>
        <option value="ali">Ali</option>
        <option value="saksham">Saksham</option>
    </select>

    <div id="message" class="message"></div>
    <img id="friendImage" class="friend-image" src="" alt="">

    <script>
        function showMessage() {
            var friend = document.getElementById("friends").value;
            var messageDiv = document.getElementById("message");
            var friendImage = document.getElementById("friendImage");

            if (friend === "atulya") {
                messageDiv.innerHTML = "Best Friend";
                friendImage.src = "image.png"; // Atulya's image
                friendImage.style.display = "block";
            } 
            else if (friend === "airav") {
                messageDiv.innerHTML = "PAPA DHOK";
                friendImage.style.display = "none";
            } 
            else if (friend === "aditya") {
                messageDiv.innerHTML = "I LOVE YOU DIYA AND FUCK YOU MY EX";
                friendImage.style.display = "none";
            } 
            else if (friend === "ali") {
                messageDiv.innerHTML = "Mulla";
                friendImage.src = "https://upload.wikimedia.org/wikipedia/commons/9/96/Muslim_Man_Praying.jpg"; // Muslim person image
                friendImage.style.display = "block";
            } 
            else {
                messageDiv.innerHTML = "";
                friendImage.style.display = "none";
            }
        }
    </script>

</body>
</html>
