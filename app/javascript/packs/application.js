import "bootstrap";
import './application.css';

import flatpickr from 'flatpickr';

const startDateinput = document.getElementById('appointment_date');
// const endDateinput = document.getElementById('appointment_end_date');

// flatpickr("#appointment_start_date");

if (startDateinput) {

  flatpickr(startDateinput, {
    minDate: 'today',
    dateFormat: 'd-m-Y',
    }

  );

  // const endDateCalendar =
  //   flatpickr(endDateinput, {
  //     dateFormat: 'd-m-Y',
  //   });
}

const startTimeinput = document.getElementById('appointment_time');
// const endDateinput = document.getElementById('appointment_end_date');

// flatpickr("#appointment_start_date");

if (startTimeinput) {

  flatpickr(startTimeinput, {
    noCalendar: true,
    enableTime: true,
    minTime: "09:00"
    }

  );

  // const endDateCalendar =
  //   flatpickr(endDateinput, {
  //     dateFormat: 'd-m-Y',
  //   });
}



import mapping from "../components/map";

const mapElement = document.getElementById("map");


mapping(mapElement);

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
