import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';

flatpickr(".datetimepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
});

