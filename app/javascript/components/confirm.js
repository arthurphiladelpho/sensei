import swal from 'sweetalert';


function SweetAlertConfirm() {
  const confirmButton = document.getElementById('confirm-button');
  if (confirmButton) {
    confirmButton.addEventListener('click', () => {
      swal({
        title: "Confirmed",
        text: "Your lesson is booked",
        icon: "success"
      });
    });
  }

  const deleteBookingButton = document.getElementById('cancel-booking-button');
  if (deleteBookingButton) {
    deleteBookingButton.addEventListener('click', () => {
      swal({
        title: "Are you sure?",
        text: "If click ok, your lesson will be canceled",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      }).then((userConfirmation) => {
        if (userConfirmation) {
          swal("Your lesson is canceled!", {
            icon: "success",
          });
        } else {
          swal("You have a lesson");
        }
      });
    });
  }
}

export { SweetAlertConfirm };
