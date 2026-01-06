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
    font-size: 10px;
  }
  /* Hide the "streak" columns (Longest streak, Current streak) to save space and match GitHub style */
  .github-calendar .contrib-column {
    display: none !important;
  }
  /* Keep the footer but clean it up */
  .github-calendar .contrib-footer {
    display: block !important;
    padding: 5px 0;
    text-align: center;
    font-size: 11px;
  }
  /* Show the legend */
  .github-calendar .contrib-legend {
    display: inline-block !important;
  }
  /* Hide the "Learn how we count contributions" link */
  .github-calendar .contrib-footer a {
    display: none !important;
  }
  /* Specific fix for "Skip to..." text */
  .github-calendar .sr-only, 
  .github-calendar h2 {
    display: none !important;
  }
  /* Center the graph */
  .github-calendar .js-calendar-graph {
    padding: 0 !important;
    text-align: center;
  }
  .github-calendar .js-calendar-graph-svg {
    width: 100%;
  }
    /* Ensure tooltips are visible */
  .svg-tip {
      z-index: 9999 !important;
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