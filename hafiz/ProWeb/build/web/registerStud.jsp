
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 70%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
<link rel="stylesheet" href="css/massagebox.css">
</head>
<body>

<form action="processRegisterStud.jsp" method="post">
  <div class="container">
      <center><h1>Register</h1>
          <p>Please fill in this form to create an account.</p></center>
    <hr>

    <center><label><b>Username</b></label><br>
    <input type="text" placeholder="Enter Username" name="username"  required><br>

    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="password" required><br>
    
     <label><b>Name</b></label><br>
     <input type="text" placeholder="Enter name" name="nama" required><br>

    <label><b>Contact Number</b></label><br>
    <input type="text" placeholder="Your number phone" name="notel" required><br>
    
     <label><b>Identity Card</b></label><br>
     <input type="text" placeholder="Enter Ic Number" name="ic" required><br>

    <label ><b>Matrik Number</b></label><br>
    <input type="text" placeholder="Enter matrik Number" name="kadmatrik" required><br>

    <label><b>Gender</b></label>
    <input type="radio" name="jantina" value="Lelaki">Lelaki
    <input type="radio" name="jantina" value="Perempuan">Perempuan
    <br>
    <hr>  
    <label ><b>Bangsa</b></label>
    <select name="bangsa" required >
        <option  selected hidden>Sila Pilih Bangsa</option>
        <option value="Melayu">Melayu</option>
        <option value="Cina">Cina</option>
        <option value="India">India<option>
    </select>
    <br>
    <hr>
    <label><b>Semester</b></label>
    <select name="sem" required>
        <option  selected hidden>Choose Your Semester</option>
        <option value="1">1</option>
         <option value="2">2</option>
          <option value="3">3</option>
           <option value="4">4</option>
            <option value="5">5</option>
             <option value="6">6</option>
              <option value="7">7</option>
               <option value="8">8</option>
                <option value="9">9</option>
    </select>
    <hr>
    <label><b>Course</b></label>
    <select name="kos" required>
        <option value="DDT">DDT</option>
        <option value="DTK">DTK</option>
        <option value="DHF">DHF</option>
        <option value="DDV">DDV</option>
        <option value="DEP">DEP</option>
        <option value="DOP">DOP</option>
        <option value="DDS">DDS</option>
        <option value="DSK">DSK</option>
        <option value="DAT">DAT</option>
        <option value="DDK">DDK</option>
        <option value="DUP">DUP</option>
        <option value="DHM">DHM</option>
        
    </select> <hr>
    
    <label><b>Email</b></label><br>
    <input type="text" placeholder="Enter Email" name="email" required><br>

    <label><b>Alamat</b></label><br>
    <input type="text" placeholder="Enter Address" name="alamat" required><br>

    <label ><b>Bandar</b></label><br>
    <input type="text" placeholder="Enter Town" name="bandar" required><br>
    
    <label ><b>Poskod</b></label><br>
    <input type="text" placeholder="Enter poskod" name="poskod" required><br>
    
    <label><b>Negeri</b></label>
    <select name="negeri" required>
        <option  selected hidden>Sila Pilih Negeri</option>
        <option value="Perlis">Perlis</option>
        <option value="Negeri sembilan">Negeri Sembian</option>
        <option value="Terengganu">Terengganu</option>
        <option value="Melaka">Melaka</option>
        <option value="Pahang">Pahang</option>
        <option value="Kelantan">Kelantan</option>
        <option value="Perak">Perak</option>
        <option value="Kedah">Kedah</option>
        <option value="Selangor">Selangor</option>
        <option value="Pulau Pinang">Pulau Pinang</option>
        <option value="Johor">Johor</option>
        <option value="Serawak">Serawak</option>
        <option value="Sabah">Sabah</option>
    </select>
    <hr>
   
    
    <label><b>Agama</b></label>
    <input type="radio" name="agama" value="Islam">Islam
    <input type="radio" name="agama" value="Hindu">Hindu
    <input type="radio" name="agama" value="Budha">Budha
    <input type="radio" name="agama" value="Kristian">Kristian<br>
    <hr>
    <label ><b>Kelas</b></label>
    <select name="kelas" required>
        <option  selected hidden>Choose Your Class</option>
        <option value="DDT4A">DDT4D</option>
        <option value="DDT4B">DDT4B</option>
        <option value="DDT4C">DDT4C</option>
        <option value="DDT4D">DDT4D</option>
        <option value="DDT4E">DDT4E</option>
    </select>
    <hr>
    <label><b>Sesi</b></label>
    <input type="radio" name="sesi" value="Jun">Jun
    <input type="radio" name="sesi" value="Disember">Disember
    
    <hr>
    <label><b> Skill</b></label>
    <select name="skill" required>
        <option  selected hidden>Choose Your Skill</option>
        <option value="Photography">Photography</option>
        <option value="Designer">Designer</option>
        <option value="Engenier">Enginier</option>
    </select>
    <hr>
    <label><b>Blok</b></label>
    <select  required name="blok">
	<option value="" selected hidden>Pilih Blok</option>
	<option value="A3">A3 </option>
	<option value="A4">A4</option>
        <option value="A5">A5</option>
    </select>
    
    <label><b>Aras</b></label>
    <select required name="aras">
	<option  selected hidden>Pilih Aras</option>
	<option value="1">1 </option>
	<option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>
    
    <label><b>No Bilik</b></label>
    <select  required name="no_bilik">
									<option  selected hidden>Pilih No Bilik</option>
									<option value="1">1</option>
									<option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
									<option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
									<option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="10">10</option>
									<option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                        <option value="13">13</option>
									<option value="14">14</option>
                                                                        <option value="15">15</option>
                                                                        <option value="16">16</option>
									<option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
									<option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
									<option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
									<option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
									<option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
									<option value="32">32</option>
                                                                        <option value="33">33</option>
                                                                        <option value="34">34</option>
									<option value="35">35</option>
                                                                        <option value="36">36</option>
								</select>
    <hr>
    
    <label><b>Tarikh Register</b></label>
    <input type="datetime-local"  name=date required></center>
    <hr>
    <center> <label><b>Policy And Privacy</b></label>
        <input type="radio" name="bill" value="Please Update" required>Accept</center>
   

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="index.jsp">Log in</a>.</p>
  </div>
</form>

    <!-- Trigger/Open The Modal -->
    <p>By creating an account you agree to our </p><button id="myBtn">Terms & Privacy</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Privacy </h2>
    </div>
    <div class="modal-body">
        <h1>DASAR PRIVASI</h1>

        <h2>Privasi Anda</h2>
        <p>Halaman ini menerangkan dasar privasi yang merangkumi penggunaan dan perlindungan maklumat yang dikemukakan oleh pengunjung. Sekiranya anda memilih untuk berurusan dengan menggunakan laman web kami atau menghantar emel yang mengandungi maklumat peribadi, maklumat ini mungkin akan dikongsi bersama dengan agensi-agensi kerajaan yang lain untuk membantu penyediaan perkhidmatan yang lebih berkesan dan efektif kepada anda. Contohnya seperti di dalam menyelesaikan aduan yang memerlukan maklumbalas dari agensi-agensi kerajaan yang lain.</p>

        <h3>Maklumat Yang Dikumpul</h3>
        <p>Tiada maklumat peribadi akan dikumpul semasa anda melayari laman web ini kecuali maklumat yang dikemukakan oleh anda melalui emel.</p>

      <h4>Pautan</h4>
      <p>Laman web ini mempunyai pautan ke portal atau laman web yang lain. Dasar privasi ini hanya terpakai untuk laman web ini sahaja. Perlu diingatkan bahawa portal atau laman web yang terdapat dalam pautan mungkin mempunyai dasar privasi yang berbeza dan pengunjung dinasihatkan supaya meneliti dan memahami dasar privasi bagi setiap portal atau laman web yang dilayari.</p>

      <h5>Pindaan Dasar</h5>
<p>Sekiranya terdapat sebarang pindaan terhadap dasar privasi ini, pindaan akan dikemaskini di halaman ini. Sila layari halaman ini bagi membolehkan anda dikemaskini dengan maklumat yang dikumpul, cara maklumat tersebut digunakan dan dalam keadaan tertentu, bagaimana maklumat tersebut dikongsi dengan pihak yang lain</p>
      
    </div>
    <div class="modal-footer">
      <h3>Kamsis Management Systems</h3>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>