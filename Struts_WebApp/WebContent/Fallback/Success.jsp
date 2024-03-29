<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hooray</title>
<style>
	:root {
	  --skin: #f2b383;
	  --border: #483b55;
	  --tshirt1: teal;
	  --tshirt2: tomato;
	  --shadow: #483b5555;
	  --bg: wheat;
	  --duration: 0.5s;
	}
	
	*,
	*:after,
	*:before {
	  box-sizing: border-box;
	}
	
	*:after,
	*:before {
	  content: "";
	}
	
	.me *,
	.me *:after,
	.me *:before {
	  position: absolute;
	  left: 0;
	  right: 0;
	  margin: auto;
	}
	
	body {
	  justify-content: center;
	  align-items: center;
	  height: 100vh;
	  width: 100%;
	  background: var(--bg);
	  color: var(--border);
	  overflow: hidden;
	}
	
	.body {
	  background: var(--skin);
	}
	
	.illustration {
	  position: relative;
	  height: 100vh;
	  z-index: 1;
	  margin: auto;
	  top: 0;
	}
	.illustration:before {
	  content: "";
	  background: var(--border);
	  width: 30vh;
	  height: 1vh;
	  position: absolute;
	  margin: auto;
	  left: 0;
	  right: 0;
	  bottom: 22vh;
	  border-radius: 50%;
	  opacity: 0.6;
	  animation: hopshadow var(--duration) infinite ease-in;
	}
	
	.me {
	  animation: hop var(--duration) infinite ease-in;
	}
	
	.head {
	  border-bottom: none;
	  background-position: top left;
	  top: 14vh;
	  height: 14.5vh;
	  width: 11vh;
	  border-radius: 50% 40% 0 0;
	  z-index: 2;
	  transform-origin: center bottom;
	}
	
	.hair {
	  border-radius: 50% 50% 0 0/60% 60% 0 0;
	  background: var(--border);
	  width: 100%;
	  height: 80%;
	  top: 10%;
	  animation: hophair var(--duration) infinite;
	}
	
	.face {
	  top: 9vh;
	  width: 7vh;
	  height: 4.25vh;
	  border-radius: 0 0 6vh 6vh/0 0 7.5vh 7.5vh;
	  border-top: none;
	  z-index: 2;
	  overflow: hidden;
	}
	.face:before, .face:after {
	  background: var(--tshirt2);
	  width: 2vh;
	  height: 2vh;
	  border-radius: 50%;
	  left: 0;
	  right: auto;
	  top: 1vh;
	  opacity: 0;
	  animation: appear 5s forwards;
	}
	.face:after {
	  right: 0;
	  left: auto;
	}
	
	.face-up {
	  background: var(--skin);
	  height: 2vh;
	  width: 7vh;
	  top: 7.25vh;
	  clip-path: polygon(60% 0, 100% 100%, 0 100%);
	  z-index: 1;
	}
	
	.nose {
	  top: 1vh;
	  width: 15%;
	  height: 1vh;
	  border-radius: 0 0 0.75vh 0.75vh;
	  border: 0.25vh solid var(--shadow);
	  border-top-color: var(--skin);
	}
	
	.lips {
	  border-bottom: 2px solid;
	  border-radius: 0 0 100% 100%/0 0 100% 100%;
	  width: 2vh;
	  height: 1vh;
	  top: 2vh;
	}
	
	.eyes {
	  top: 0.5vh;
	  height: 2vh;
	}
	
	.eyes:before,
	.eyes:after {
	  border: 2px solid;
	  border-top: none;
	  width: 1.75vh;
	  height: 0.5vh;
	}
	
	.eyes:before {
	  right: auto;
	  border-radius: 100% 0%;
	  left: calc(50% + 1.125vh);
	  border-left: none;
	}
	
	.eyes:after {
	  left: auto;
	  border-radius: 0% 100% 0% 100%;
	  right: calc(50% + 1.125vh);
	  border-right: none;
	}
	
	.neck {
	  box-shadow: inset 0 1vh 0.3vh var(--shadow);
	  height: 3.5vh;
	  width: 2vh;
	  top: 12.5vh;
	  border-bottom-color: var(--skin);
	  z-index: 1;
	}
	
	.decoltee {
	  border: 0.5vh solid white;
	  border-top: 0;
	  z-index: 1;
	  height: 8%;
	  width: 27%;
	  top: 15.5vh;
	  border-radius: 0 0 50% 50%/0 0 100% 100%;
	}
	
	.dress {
	  background: var(--tshirt2);
	  background-image: linear-gradient(to bottom, var(--tshirt1), var(--tshirt1) 50%, var(--tshirt2) 50%, var(--tshirt2));
	  clip-path: polygon(30% 0%, 70% 0, 100% 100%, 0 100%);
	  background-position: bottom center;
	  background-size: 100% 2vh;
	  height: 24vh;
	  width: 11vh;
	  top: 29.5vh;
	  box-shadow: inset 0 10px 3vh var(--border);
	  z-index: 1;
	  animation: dress var(--duration) infinite;
	  transform-origin: center top;
	}
	
	@keyframes dress {
	  50% {
	    transform: rotate(-2deg) scaleX(1.05);
	  }
	}
	.trapeze {
	  height: 30vh;
	}
	
	.rope {
	  height: 30vh;
	  bottom: 0;
	  border-radius: 50% 50% 0 0/100% 100% 0 0;
	  border: 3px solid;
	  border-bottom: none;
	  left: calc(50% - 20vh);
	  right: calc(50% - 20vh);
	  animation: rope calc(2 * var(--duration)) infinite ease-in;
	  transform-origin: center bottom;
	  z-index: 1;
	}
	
	.arm {
	  width: 14vh;
	  height: 2vh;
	  bottom: -2vh;
	  left: auto;
	  right: auto;
	  border-radius: 2vh;
	}
	.arm:after {
	  content: "";
	  top: 0;
	  width: 14vh;
	  height: 2vh;
	  background: inherit;
	  border-radius: 2vh;
	}
	
	.arm-l {
	  transform-origin: right top;
	  right: calc(50% + 2vh);
	  transform: rotate(-45deg);
	  animation: hoparml var(--duration) infinite ease-in;
	}
	.arm-l:after {
	  left: 0vh;
	  transform: rotate(-90deg);
	  transform-origin: 1vh center;
	}
	
	.arm-r {
	  transform-origin: left top;
	  left: calc(50% + 2vh);
	  transform: rotate(45deg);
	  animation: hoparmr var(--duration) infinite ease-in;
	}
	.arm-r:after {
	  right: 0;
	  transform: rotate(90deg);
	  transform-origin: 13vh center;
	}
	
	.me {
	  z-index: 0;
	}
	
	.leg {
	  height: 10vh;
	  width: 2.25vh;
	  top: 50vh;
	  border-radius: 2vh;
	}
	.leg:after {
	  z-index: -1;
	  content: "";
	  height: 20vh;
	  width: 2.25vh;
	  background: inherit;
	  border-radius: 2vh;
	  top: calc(100% - 2vh);
	  background-image: linear-gradient(to bottom, transparent 20%, white 20%, white 25%, var(--tshirt2) 25%, var(--tshirt2) 27%, white 27%, white 60%, var(--tshirt1) 60%, var(--tshirt1));
	}
	
	.leg-l {
	  transform-origin: center top;
	  transform: rotate(5deg);
	  left: -4vh;
	  animation: legltop infinite calc(2 * var(--duration)) ease-in;
	}
	.leg-l:after {
	  transform-origin: center 1vh;
	  animation: legl infinite calc(2 * var(--duration)) ease-in;
	}
	
	.leg-r {
	  transform-origin: center 1vh;
	  left: 4vh;
	  transform: rotate(-5deg);
	  animation: legrtop infinite calc(2 * var(--duration)) calc(-1 * var(--duration)) ease-in;
	}
	.leg-r:after {
	  transform-origin: center 1vh;
	  animation: legl infinite calc(2 * var(--duration)) calc(-1 * var(--duration)) ease-in;
	}
	
	@keyframes rope {
	  25%, 75% {
	    transform: scaleY(-1.7) scaleX(0.8);
	    z-index: 1;
	  }
	  26%, 76% {
	    z-index: -1;
	  }
	  50% {
	    transform: scaleY(0.6) scaleX(1);
	    z-index: -1;
	  }
	  51% {
	    z-index: 1;
	  }
	}
	@keyframes hophair {
	  50% {
	    transform: rotate(7deg);
	  }
	}
	@keyframes hoparml {
	  50% {
	    transform: rotate(-60deg) skew(-30deg) translateY(-0.5vh);
	  }
	}
	@keyframes hoparmr {
	  50% {
	    transform: rotate(60deg) skew(30deg) translateY(-0.5vh);
	  }
	}
	@keyframes legl {
	  4%, 16% {
	    transform: rotate(0deg);
	  }
	  44% {
	    transform: rotate(-45deg);
	  }
	  68% {
	    transform: rotate(-40deg);
	  }
	  80% {
	    transform: rotate(-5deg);
	  }
	  100% {
	    transform: rotate(0);
	  }
	}
	@keyframes legltop {
	  4% {
	    transform: rotate(5deg);
	  }
	  16% {
	    transform: rotate(5deg) translateY(-3vh);
	  }
	  44% {
	    transform: rotate(-15deg) translateY(-3vh);
	  }
	  68% {
	    transform: rotate(-15deg) translateY(-3vh);
	  }
	  80% {
	    transform: rotate(5deg) translateY(-3vh);
	  }
	  100% {
	    transform: rotate(5deg);
	  }
	}
	@keyframes legrtop {
	  4% {
	    transform: rotate(-5deg);
	  }
	  16% {
	    transform: rotate(-5deg) translateY(-3vh);
	  }
	  44% {
	    transform: rotate(-15deg) translateY(-3vh);
	  }
	  68% {
	    transform: rotate(-15deg) translateY(-3vh);
	  }
	  80% {
	    transform: rotate(-5deg) translateY(-3vh);
	  }
	  100% {
	    transform: rotate(-5deg);
	  }
	}
	@keyframes hop {
	  10%, 90% {
	    transform: translate3d(0, 0, 0);
	  }
	  50% {
	    transform: translate3d(0, -3vh, 0);
	  }
	}
	@keyframes hopshadow {
	  10%, 90% {
	    transform: scale(1);
	  }
	  50% {
	    transform: scale(0.9);
	    opacity: 0.4;
	  }
	}
	@keyframes appear {
	  to {
	    opacity: 0.5;
	  }
	}
</style>
</head>
<body>
	<div class="illustration">
	  <div class="me">
	    <div class="head">
	      <div class="hair"></div>
	      <div class="face-up"></div>
	      <div class="face body">
	        <div class="eyes"></div>
	        <div class="nose"></div>
	        <div class="lips"></div>
	      </div>
	      <div class="neck body"></div>
	      <div class="decoltee body"></div>
	    </div>
	    <div class="dress"></div>
	    <div class="trapeze">
	      <div class="rope"></div>
	      <div class="arm arm-l body"></div>
	      <div class="arm arm-r body"></div>
	    </div>
	    <div class="leg leg-l body"></div>
	    <div class="leg leg-r body"></div>
	  </div>
	</div>
</body>
</html>