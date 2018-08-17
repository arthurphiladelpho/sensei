//= require bootstrap-datepicker
import "bootstrap";
import "../plugins/flatpickr"


import { SweetAlertConfirm } from '../components/confirm';
SweetAlertConfirm();

import { bookModalAction } from '../components/modal_trigger';
bookModalAction();

import { dynamicBannerText } from '../components/typed';
dynamicBannerText();
