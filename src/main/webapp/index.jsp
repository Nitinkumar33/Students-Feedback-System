<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #4070f4;
}
.container{
    position: relative;
    max-width: 900px;
    width: 100%;
    border-radius: 6px;
    padding: 30px;
    margin: 0 15px;
    background-color: #fff;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.container header{
    position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #333;
}
.container header::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 8px;
    background-color: #4070f4;
}
.container form{
    position: relative;
    margin-top: 16px;
    min-height: 490px;
    background-color: #fff;
    overflow: hidden;
}
.container form .form{
    position: absolute;
    background-color: #fff;
    transition: 0.3s ease;
}
.container form .form.second{
    opacity: 0;
    pointer-events: none;
    transform: translateX(100%);
}
form.secActive .form.second{
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
}
form.secActive .form.first{
    opacity: 0;
    pointer-events: none;
    transform: translateX(-100%);
}
.container form .title{
    display: block;
    margin-bottom: 8px;
    font-size: 16px;
    font-weight: 500;
    margin: 6px 0;
    color: #333;
}
.container form .fields{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}
form .fields .input-field{
    display: flex;
    width: calc(100% / 3 - 15px);
    flex-direction: column;
    margin: 4px 0;
}
.input-field label{
    font-size: 12px;
    font-weight: 500;
    color: #2e2e2e;
}
.input-field input, select{
    outline: none;
    font-size: 14px;
    font-weight: 400;
    color: #333;
    border-radius: 5px;
    border: 1px solid #aaa;
    padding: 0 15px;
    height: 42px;
    margin: 8px 0;
}
.input-field input :focus,
.input-field select:focus{
    box-shadow: 0 3px 6px rgba(0,0,0,0.13);
}
.input-field select,
.input-field input[type="date"]{
    color: #707070;
}
.input-field input[type="date"]:valid{
    color: #333;
}
.container form button, .backBtn{
    display: flex;
    align-items: center;
    justify-content: center;
    height: 45px;
    max-width: 200px;
    width: 100%;
    border: none;
    outline: none;
    color: #fff;
    border-radius: 5px;
    margin: 25px 0;
    background-color: #4070f4;
    transition: all 0.3s linear;
    cursor: pointer;
}
.container form .btnText{
    font-size: 14px;
    font-weight: 400;
}
form button:hover{
    background-color: #265df2;
}
form button i,
form .backBtn i{
    margin: 0 6px;
}
form .backBtn i{
    transform: rotate(180deg);
}
form .buttons{
    display: flex;
    align-items: center;
}
form .buttons button , .backBtn{
    margin-right: 14px;
}

@media (max-width: 750px) {
    .container form{
        overflow-y: scroll;
    }
    .container form::-webkit-scrollbar{
       display: none;
    }
    form .fields .input-field{
        width: calc(100% / 2 - 15px);
    }
}

@media (max-width: 550px) {
    form .fields .input-field{
        width: 100%;
    }
}
    </style>
<body>
    <div class="container">
        <center><h1>Students Feedback System</h1></center>
        <hr>
        <form action="#">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Student Feedback Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Registration No</label>
                            <input type="text" placeholder="Enter your Registration number" required>
                        </div>

                        <div class="input-field">
                            <label>Branch</label>
                            <select required>
                                <option disabled selected>Select Branch</option>
                                <option>B.Tech(CSE)</option>
                                <option>B.Tech(EEE)</option>
                                <option>B.Tech(MEC)</option>
                                <option>B.Tech(AG)</option>
                                <option>B.Tech(CIVIL)</option>
                                <option>B.Tech(ECE)</option>
                                <option>Bsc</option>
                                <option>Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Semester</label>
                            <input type="text" placeholder="Enter current sem " required>
                        </div>

                        <div class="input-field">
                            <label>Subject</label>
                            <input type="text" placeholder="Enter your Subject name" required>
                        </div>

                        <div class="input-field">
                            <label>Faculty</label>
                            <input type="text" placeholder="Enter your Faculty name" required>
                        </div>
                        <br>
                    <button class="nextBtn" onclick="myfunc()">
                        <span class="btnText" >Submit</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                          </div>  
                      </div>
                    </div>
                </div> 
    <script>
        function myfunc() {
            alert("Thank You..! Your Feedback is Valuable to Us");
        }
    </script>
</body>
</html>
