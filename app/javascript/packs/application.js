import "bootstrap";

import flatpickr from 'flatpickr';

const startDateinput = document.getElementById('appointment_date');
// const endDateinput = document.getElementById('appointment_end_date');



// flatpickr("#appointment_start_date");

if (startDateinput) {

  flatpickr(startDateinput, {
    minDate: 'today',
    dateFormat: 'd-m-Y'


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
