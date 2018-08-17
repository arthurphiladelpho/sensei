function bookModalAction() {
  const button = document.getElementById('book-btn');
  button.addEventListener('click', (event) => {
    event.preventDefault();
    let datetime_to_print = document.getElementById('booking_datetime').value;
    let booking_time = document.getElementById('booking_time');
    if (datetime_to_print != "") {
      $('#exampleModalCenter').modal('show');
      booking_time.innerText = datetime_to_print;
    } else {
      booking_time.placeholder = "Choose time and date!"
    }
  });
  const confirmBtn = document.getElementById('confirm-btn');
  confirmBtn.addEventListener('click', (event) => {
    $('#new_booking').submit();
  });
}

export { bookModalAction };
