import { Controller } from 'stimulus';

export default class extends Controller {
    static targets =  [ "userModal" ]

    launchDemo(){
        let container = document.getElementById('myModal')
        container.classList.add("show");
        container.setAttribute("style", "display: block;");
        fetch(`http://localhost:3005/api/v1/users/${event.currentTarget.id}`, {
            headers: { accept: 'application/json', key: 'ghd442454e2e8e91157465ce6578b7961A4VG626eedaf4ddf132422f961a74ff0ertd'}
        }).then(function (response){
            return response.json()
        }).then(function(data) {
            console.log(data);
            loadUsersTarget.innerHTML = userHTML;
            container.innerHTML += `<div class="modal-backdrop fade show">${data}</div>`;
        }).catch(function(error) {
        });
    }

}

