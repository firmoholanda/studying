// import stylesheets
import './view/css/style.css';

// import html modules
import error from './view/error';
import jumbotron from './view/jumbotron';
import search from './view/search';
import weatherCard from './view/weatherCard';
import footer from './view/footer';

const apiKey = '31a4bf410e7c22de98a5243e4df72170';

// assemble index
const main = document.querySelector('#content');
main.insertAdjacentHTML('beforeEnd', error);
main.insertAdjacentHTML('beforeEnd', jumbotron);
main.insertAdjacentHTML('beforeEnd', search);
main.insertAdjacentHTML('beforeEnd', weatherCard);
main.insertAdjacentHTML('beforeEnd', footer);

// get html elements
const displayErrorElement = document.getElementById('displayError');
const searchImput = document.getElementById('searchImput');
const searchBtn = document.getElementById('searchBtn');
const cityElement = document.getElementById('city');
const temperatureElement = document.getElementById('temperature');
const weatherIconElement = document.getElementById('weatherIcon');
const weatherDescriptionElement = document.getElementById('weatherDescription');
const pressureElement = document.getElementById('pressure');
const humidityElement = document.getElementById('humidity');
const windElement = document.getElementById('wind');
const updatedAtElement = document.getElementById('updatedAt');
const switchMetricElement = document.getElementById('switchMetric');

// display erro messages
const displayError = (err) => {
  displayErrorElement.innerHTML = err;
  displayErrorElement.style.display = 'block';
  setTimeout(() => { displayErrorElement.style.display = 'none'; }, 3000);
  searchImput.value = '';
};

// call api
const getWeatherData = async (latitude, longitude, city, unit) => {
  let responseData = {};
  try {
    let response;
    if (city == null) {
      response = await fetch(`https://api.openweathermap.org/data/2.5/forecast?lat=${latitude}&lon=${longitude}&units=${unit}&APPID=${apiKey}`, { mode: 'cors' });
    } else {
      response = await fetch(`https://api.openweathermap.org/data/2.5/forecast?q=${city}&units=${unit}&APPID=${apiKey}`, { mode: 'cors' });
    }
    const weatherData = await response.json();
    responseData = {
      city: `${weatherData.city.name}, ${weatherData.city.country}`,
      temperature: (weatherData.list[0].main.temp).toFixed(1),
      weatherDescription: weatherData.list[0].weather[0].description,
      weatherIcon: weatherData.list[0].weather[0].icon,
      pressure: weatherData.list[0].main.pressure,
      humidity: weatherData.list[0].main.humidity,
      wind: weatherData.list[0].wind.speed,
    };
  } catch (err) {
    displayError('invalid city name. please try again.');
  }
  return responseData;
};

// weatherData promise
function loadDataToPage(latitude, longitude, city) {
  let selectedMetric; let tempMetric; let
    windMetric;

  if (switchMetricElement.checked) {
    selectedMetric = 'imperial';
    tempMetric = ' °F';
    windMetric = ' mi/h';
  } else {
    selectedMetric = 'metric';
    tempMetric = ' °C';
    windMetric = ' m/s';
  }

  const myWeatherData = getWeatherData(latitude, longitude, city, selectedMetric);

  myWeatherData.then(response => {
    cityElement.innerHTML = response.city.toLowerCase();
    temperatureElement.innerHTML = response.temperature + tempMetric;
    weatherIconElement.src = `http://openweathermap.org/img/wn/${response.weatherIcon}@2x.png`;
    weatherDescriptionElement.innerHTML = response.weatherDescription;
    pressureElement.innerHTML = `${response.pressure} hpa`;
    humidityElement.innerHTML = `${response.humidity}%`;
    windElement.innerHTML = response.wind + windMetric;
    updatedAtElement.innerHTML = new Date().toString().toLowerCase();
  });
}

// get information from current city
function getLocalWeather() {
  navigator.geolocation.getCurrentPosition(position => {
    loadDataToPage(position.coords.latitude, position.coords.longitude, undefined);
  });
}

// loadDataToPage by default
getLocalWeather();

// loadDataToPage when searched
searchBtn.onclick = () => {
  loadDataToPage(undefined, undefined, searchImput.value);
};

// loadDataToPage when metric switch is clicked
switchMetricElement.onclick = () => {
  if (searchImput.value) {
    loadDataToPage(undefined, undefined, searchImput.value);
  } else {
    getLocalWeather();
  }
};
