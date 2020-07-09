const weatherCard = `
<div class="row py-4 d-flex justify-content-center">
  <div class="col-md-6">
    <div class="card text-center shadow bg-white rounded">
      <div class="card-body">
        <h1 class="card-title" id="weatherDescription">###</h1>
        <h4 class="card-text" id="city">###</h4>
        <img class="card-img" src="" alt=" " id="weatherIcon">
        <h1 class="card-text" id="temperature">###</h1>
        <br>
        <table class="table table-sm table-striped table-bordered table-condensed" id="weather-widget-table">
          <tbody">
            <tr>
              <td>pressure</td>
              <td id="pressure">###</td>
            </tr>
            <tr>
              <td>humidity</td>
              <td id="humidity">###</td>
            </tr>
            <tr>
              <td>wind</td>
              <td id="wind">###</td>
            </tr>
          </tbody>
        </table>
      </div>
        <div class="custom-control custom-switch text-right pr-4 pb-2">
          <input type="checkbox" class="custom-control-input" id="switchMetric">
          <label class="custom-control-label" for="switchMetric">°C / °F</label>
        </div>
      <small class="card-footer text-muted text-right" id="updatedAt">###</small>
    </div>
  </div>
</div>

`;

export default weatherCard;
