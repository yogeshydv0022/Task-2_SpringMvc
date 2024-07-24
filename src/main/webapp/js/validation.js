document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');
    
    form.addEventListener('submit', function (event) {
        let isValid = true;

        const name = document.querySelector('#name');
        const className = document.querySelector('#className');
        const address = document.querySelector('#address');
        const subjects = document.querySelector('#subjects');
        const behavior = document.querySelector('#behavior');

        if (!name.value.trim()) {
            isValid = false;
            alert('Name is required');
        }

        if (!className.value.trim()) {
            isValid = false;
            alert('Class is required');
        }

        if (!address.value.trim()) {
            isValid = false;
            alert('Address is required');
        }

        if (!subjects.value.trim()) {
            isValid = false;
            alert('Subjects are required');
        }

        if (!behavior.value.trim()) {
            isValid = false;
            alert('Behavior is required');
        }

        if (!isValid) {
            event.preventDefault();
        }
    });
});
