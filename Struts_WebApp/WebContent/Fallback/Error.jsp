<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bhayanak Atma</title>
<style>
	h1 {
	  color: #fff;
	  font-family: arial, san serif;
	  text-align: center;
	  margin-top: 10%;
	}
	h2 {
	  color: #fff;
	  font-family: arial, san serif;
	  text-align: center;
	  position: absolute;
	  bottom: 10%;
	  left: 50%;
	  transform: translateX(-50%);
	  width: max-content;
	  padding: calc(0.75vh + 0.75vw);
	  border: 1px solid #fff;
	  border-radius: 12px;
	  cursor: pointer;
	}
	
	body{background:#000;margin:0;}
	#hitarea{
	  position:absolute;
	  left:50%;
	  top: 50%;
	  transform: translate(-50%, -50%);
	  width:500px;
	  height:500px;
	}
	
	.hitbox{
	    width:100px;
	    height:100px;
	    float:left;
	}
	
	/* eyes */
	.eye{
	  position:absolute;
	  width:100px;
	  height:100px;
	  background: #fff;
	  border-radius:50px;
	  left:25%;
	  top: 40%;
	  pointer-events: none;
	}
	
	.eye+.eye{
	    left: 55%;
	}
	
	.pupil{
	  position:relative;
	  width:25px;
	  height:25px;
	  background:#000;
	  border-radius:12px;
	  left:50%;
	  top:50%;
	  margin:-12px 0 0 -12px;
	  -webkit-transition: all .5s ease;
	}
	
	.eyelid{
	    width:150px;
	    height: 100px;
	    position:absolute;
	    left:20%;
	    top: 25%;
	    pointer-events: none;
	    background: #000;
	    -webkit-animation-name:             blink;
	    -webkit-animation-duration:         4.5s;
	    -webkit-animation-iteration-count:  infinite;
	    -webkit-animation-timing-function:  linear;
	    -webkit-animation-direction:        alternate;
	    -webkit-animation-delay: 1s;
	    -webkit-transition: all .5s ease;
	
	}
	
	.eyelid+.eyelid{
	    left: 50%;
	}
	
	/* Blinking eyes */
	@-webkit-keyframes blink{
	  0%{
	    top:25%;
	  }
	 95%{
	    top:25%;
	  }
	  100%{
	    top:40%;
	  }
	}
	
	/* hover events */
	
	/* eye lids */
	.hitbox:hover ~ .eyelid{
	    -webkit-transform: rotate(-10deg);
	}
	.hitbox:hover ~ .eyelid:nth-of-type(2n+1){
	    -webkit-transform: rotate(10deg);
	}
	#c-3:hover ~ .eyelid{
	    -webkit-transform: rotate(15deg);
	}
	#c-3:hover ~ .eyelid:nth-of-type(2n+1) {
	    -webkit-transform: rotate(-15deg);
	}
	
	/* pupils */
	
	#a-1:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(60deg) translate(-30px);
	}
	
	#a-2:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(80deg) translate(-30px);
	}
	
	#a-3:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(90deg) translate(-30px);
	}
	
	#a-4:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(100deg) translate(-30px);
	}
	
	#a-5:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(120deg) translate(-30px);
	}
	
	#b-1:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(50deg) translate(-25px);
	}
	
	#b-2:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(70deg) translate(-25px);
	}
	
	#b-3:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(100deg) translate(-25px);
	}
	
	#b-3:hover ~ .eye:nth-of-type(2n+1) > .pupil {
	    -webkit-transform: rotate(80deg) translate(-25px);
	}
	
	#b-4:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(110deg) translate(-25px);
	}
	
	#b-5:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(130deg) translate(-25px);
	}
	
	#c-1:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(0deg) translate(-25px);
	}
	
	#c-2:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(0deg) translate(-10px);
	}
	
	#c-3:hover ~ .eye > .pupil{
	    background: #fcb034;
	    -webkit-transform: rotate(180deg) translate(-25px);
	}
	
	#c-3:hover ~ .eye:nth-of-type(2n+1) > .pupil {
	    -webkit-transform: rotate(0deg) translate(-25px);
	}
	
	#c-4:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(180deg) translate(-10px);
	}
	
	#c-5:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(180deg) translate(-25px);
	}
	
	#d-1:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-40deg) translate(-25px);
	}
	
	#d-2:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-60deg) translate(-25px);
	}
	
	#d-3:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-120deg) translate(-25px);
	}
	
	#d-3:hover ~ .eye:nth-of-type(2n+1) > .pupil {
	    -webkit-transform: rotate(-60deg) translate(-25px);
	}
	
	#d-4:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-130deg) translate(-25px);
	}
	
	#d-4:hover ~ .eye:nth-of-type(2n+1) > .pupil{
	    -webkit-transform: rotate(-100deg) translate(-25px);
	}
	
	#d-5:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-140deg) translate(-25px);
	}
	
	#e-1:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-40deg) translate(-30px);
	}
	
	#e-2:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-60deg) translate(-30px);
	}
	
	#e-3:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-120deg) translate(-30px);
	}
	
	#e-3:hover ~ .eye:nth-of-type(2n+1) > .pupil {
	    -webkit-transform: rotate(-60deg) translate(-30px);
	}
	
	#e-4:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-130deg) translate(-30px);
	}
	
	#e-4:hover ~ .eye:nth-of-type(2n+1) > .pupil{
	    -webkit-transform: rotate(-100deg) translate(-30px);
	}
	
	#e-5:hover ~ .eye > .pupil{
	    -webkit-transform: rotate(-140deg) translate(-30px);
	}
</style>
</head>
<body>
	<h1>Error <s:property value="StatusCode" /> - <s:property value="ErrorMessage" />!</h1>
	<div id="hitarea">
	    <div id="a-1" class="hitbox"></div>
	    <div id="a-2" class="hitbox"></div>
	    <div id="a-3" class="hitbox"></div>
	    <div id="a-4" class="hitbox"></div>
	    <div id="a-5" class="hitbox"></div>
	    <div id="b-1" class="hitbox"></div>
	    <div id="b-2" class="hitbox"></div>
	    <div id="b-3" class="hitbox"></div>
	    <div id="b-4" class="hitbox"></div>
	    <div id="b-5" class="hitbox"></div>
	    <div id="c-1" class="hitbox"></div>
	    <div id="c-2" class="hitbox"></div>
	    <div id="c-3" class="hitbox"></div>
	    <div id="c-4" class="hitbox"></div>
	    <div id="c-5" class="hitbox"></div>
	    <div id="d-1" class="hitbox"></div>
	    <div id="d-2" class="hitbox"></div>
	    <div id="d-3" class="hitbox"></div>
	    <div id="d-4" class="hitbox"></div>
	    <div id="d-5" class="hitbox"></div>
	    <div id="e-1" class="hitbox"></div>
	    <div id="e-2" class="hitbox"></div>
	    <div id="e-3" class="hitbox"></div>
	    <div id="e-4" class="hitbox"></div>
	    <div id="e-5" class="hitbox"></div>
	    <div class="eye">
			<div class="pupil"></div>
		</div>
		<div class="eye">
			<div class="pupil"></div>
		</div>
		<div class="eyelid"></div>
		<div class="eyelid"></div>
	</div>
	<h2 onclick="window.location.href= `https://www.pngitem.com/pimgs/m/169-1697621_hitler-adolf-hitler-hd-png-download.png`">!! Remove Polish with Chemicals !!</h2>
</body>
</html>