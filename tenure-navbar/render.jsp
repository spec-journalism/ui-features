<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://platform.washingtonpost.com/pagebuilder" prefix="pb" %>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:600|Roboto:400" rel="stylesheet">

<div id="nav-container">
    <button id="expand-btn" onclick="toggleNav()">
        <svg viewBox="0 0 32 32" viewBox="0 0 32 32" aria-hidden="true">
            <path d="M16.002 18.626l7.081-7.081L25 13.46l-8.997 8.998-9.003-9 1.917-1.916z"/>
        </svg>
    </button>
    <div id="navbar">
        <a href="http://columbiaspectator.com" id="logo" class="noselect">
            <img src="./spectator-logo.png" alt="Columbia Spectator" />
        </a>
        <div class="part" id="intro">
            <a href="#">Intro</a>
        </div>
        <div class="part" id="part1">
            <a href="#">Part 1: First Line of Defense</a>
        </div>
        <div class="part" id="part2">
            <a href="#">Part 2: Foregoing Formalities</a>
        </div>
        <div class="part" id="part3">
            <a href="#">Part 3: Breaking the black box</a>
        </div>
        <div id="takeaways">
            <a href="#">6 Takeaways From The Times Investigation into Rupert Murdoch and His Family</a>
        </div>
    </div>
</div>

<script>
 /* Toggles mobile navbar */
 const chev = document.getElementById('expand-btn');
 const nav = document.getElementById('navbar');
 let isVisible = false;
 function toggleNav() {
     if (isVisible) {
         chev.className = 'rotate-down';
         nav.className = 'roll-up';
     } else {
         chev.className = 'rotate-up';
         nav.className = 'roll-down';
     }
     isVisible = !isVisible;
 }
</script>

<script>
 /* Highlights the correct part header on the correct page */
 // TODO: replace this with actual phrases
 const keyPhrases = {
     // phrase: id
     'ui-features/tenure-navbar': 'part1', // for local dev
     'part1': 'part1',
     'part2': 'part2',
     'part3': 'part3',
     'takeaways': 'takeaways',
 }
 for (const phrase in keyPhrases) {
     if (window.location.href.includes(phrase)) {
         document.getElementById(keyPhrases[phrase]).classList.add('highlighted');
         break;
     }
 }
</script>
