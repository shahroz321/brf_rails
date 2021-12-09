import { Controller } from 'stimulus';

export default class extends Controller {
    static targets =  [ "name", "output", "userModal", "loadUsers" ]

    userDetails(event){
        let detailsTarget = this.detailsTarget
        detailsTarget.modal({
            keyboard: true,
            backdrop: "static",
            show:false,

        }).on('show', function(){
            var getIdFromRow = $(event.target).closest('tr').data('id');
            // $(this).find('#userDetails').html($('<b> details'</b>'))
        });
    }

    connect() {
        let loadUsersTarget = this.loadUsersTarget
        console.log("hello from stimulus");
        fetch('http://localhost:3005/api/v1/users', {
            headers: { accept: 'application/json', key: 'ghd442454e2e8e91157465ce6578b7961A4VG626eedaf4ddf132422f961a74ff0ertd'}
        }).then(function (response){
            return response.json()
        }).then(function(data) {
            console.log(data);
            let userHTML = "";
            let usersArray = Object.values(data)[0]
            usersArray.forEach(function(user){
                userHTML += `<tr><td><a  data-controller="apartments" data-action='apartments#launchDemo' id="${user.id}">${user.name}</a></td><td>${user.surename}</td><td>${user.ssn}</td></tr>`
            });
            loadUsersTarget.innerHTML = userHTML;
        }).catch(function(error) {
        });
    }

}

