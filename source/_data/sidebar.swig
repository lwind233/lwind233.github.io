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
    padding-top: 20px;
    min-height: 150px;
  }
  .github-calendar .calendar {
    /* Adjust width to fit sidebar if needed */
    width: 100%;
    margin: 0 auto;
  }
  /* Optional: Hide some text or adjust font size for small sidebar */
  .github-calendar .contrib-legend {
    display: none; /* Hide legend to save space */
  }
  .github-calendar text.Month {
    font-size: 10px;
  }
  .github-calendar text.wday {
    font-size: 9px;
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