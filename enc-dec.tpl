<head>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link type="text/css" href="/main.css" rel="stylesheet">

</head>
<br/>

<div class="innner contact">
    <div class="contact-form">
        <div class="col-xs-12 wow animated slideInLeft center" data-wow-delay=".5s">
            <h1 class="centered" > Simple Encipher Decipher App </h1>
            <h2 class="centered" > This is a simple encipher, decipher <a href="https://bottlepy.org/docs/dev/">Bottle: Python Framework</a> based web app for Network Security Course Semester-8. </h2>
        </div>
    </div>
</div>

<div class="inner contact">
                <!-- Form Area -->
                <div class="contact-form">
                    <form id="encipher" method="post" action="/encipher">
                        <!-- Right Inputs -->
                        <div class="col-xs-12 wow animated slideInLeft" data-wow-delay=".5s">
                            <!-- Message -->
                            <textarea name="plaintext" form="encipher" class="form textarea"  placeholder="Enter Plain Text" >{{plaintext}}</textarea>
                        </div><!-- End Right Inputs -->
                        <!-- Bottom Submit -->
                        <div class="relative fullwidth col-xs-12 ">
                            <!-- Send Button -->
                            <button type="submit" id="submit" name="submit" class="form-btn semibold">Encipher</button> 
                        </div><!-- End Bottom Submit -->
                        <!-- Clear -->
                        <div class="clear"></div>
                    </form>
                </div>
                <br/>
                <br/>
                <div class="contact-form">
                    <form id="decipher" method="post" action="/decipher">
                        <!-- Right Inputs -->
                        <div class="col-xs-12 wow animated slideInRight" data-wow-delay=".5s">
                            <!-- Message -->
                            <textarea name="cipher" form="decipher" class="form textarea"  placeholder="Enter Cipher Text">{{cipher}}</textarea>
                        </div><!-- End Right Inputs -->
                        <!-- Bottom Submit -->
                        <div class="relative fullwidth col-xs-12">
                            <!-- Send Button -->
                            <button type="submit" id="submit" name="submit" class="form-btn semibold">Decipher</button> 
                        </div><!-- End Bottom Submit -->
                        <!-- Clear -->
                        <div class="clear"></div>
                    </form>

                </div><!-- End Contact Form Area -->
            </div><!-- End Inner -->
