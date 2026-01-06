<div id="github-graph" class="github-calendar">
    <!-- Loading stuff -->
    Loading the data just for you.
</div>

<script
  src="https://unpkg.com/github-calendar@latest/dist/github-calendar.min.js"
></script>

<link
  rel="stylesheet"
  href="https://unpkg.com/github-calendar@latest/dist/github-calendar-responsive.css"
/>

<style>
  .github-calendar {
    padding-top: 10px;
    border: none !important;
    min-height: auto;
  }
  .github-calendar .calendar {
    width: 100%;
    margin: 0 auto;
    border: none !important;
    font-size: 10px; /* Adjust font size */
  }
  /* Hide the ugly footer with stats */
  .github-calendar .contrib-footer {
    display: none !important;
  }
  /* Hide the legend colors */
  .github-calendar .contrib-legend {
    display: none !important;
  }
  /* Hide the "Learn how we count contributions" and other links */
  .github-calendar a {
    display: none !important;
  }
  /* Specific fix for "Skip to..." text if it appears in a specific container */
  .github-calendar .sr-only, 
  .github-calendar h2 {
    display: none !important;
  }
  /* Center the graph */
  .github-calendar .js-calendar-graph {
    padding: 5px !important;
    text-align: center;
  }
  .github-calendar .js-calendar-graph-svg {
    width: 100%;
  }
</style>

<script>
  // Ensure the DOM is loaded
  document.addEventListener("DOMContentLoaded", function() {
      GitHubCalendar("#github-graph", "lwind233", { 
          responsive: true,
          tooltips: true
      });
  });
</script>