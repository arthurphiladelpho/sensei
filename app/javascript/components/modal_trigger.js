function bookModalAction() {
  const button = document.getElementById('book-btn');
  button.addEventListener('click', (event) => {
    event.preventDefault();
    let datetime_to_print = document.getElementById('booking_datetime').value;
    console.log(datetime_to_print);
    $('#exampleModalCenter').modal('show');
    let booking_time = document.getElementById('booking_time');
    booking_time.innerText = datetime_to_print;
  });
  const confirmBtn = document.getElementById('confirm-btn');
  confirmBtn.addEventListener('click', (event) => {
    console.log("hello");
    $('#new_booking').submit();

  });
}

export { bookModalAction };
