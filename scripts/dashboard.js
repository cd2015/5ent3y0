$(document).ready(function () {
    $('#RegisterUserForm').submit(function (evt) {
        var addUserPost = $.post("user_register.php",
                $('#RegisterUserForm').serialize(),
                function (data) {
                })
                .done(function () {
                    $('#userAddedMessage #userAccountMsg').html($('#RegisterUserForm input[name=username]').val());
                    $('#userAddedMessage #userCategoryMsg').html($('#RegisterUserForm select[name=usercategory]').val());
                    $('#userAddedMessage #userEmailMsg').html($('#RegisterUserForm input[name=useremail]').val());
                    $('#RegisterUserForm').each(function () {
                        this.reset();
                    });

                    $('#userAddedSuccess').css('display', 'block').fadeOut(8000, "swing");

                })
                .fail(function () {
                    alert("Server Error, please check your internet connection");
                })
                .always(function () {
                    $('#updatedUsersList').load("users_updated_list.php #updatedUsersList");
                    $('#forexUsersListed').load("users_updated_list.php #forexUsersListed");
                });
        //evt.preventDefault();
        return false;
    });

    $('.fa.fa-trash-o').click(function (evt) {
        var selecteduserId = $(this).parent().attr('id');
        var parentDiv = $(this).parents('tr');

        var itemName = $(parentDiv).find("td.uname").html();

        var itemEmail = $(parentDiv).find("td.uemail").html();

        var itemStatus = $(parentDiv).find("td.ustatus").html();
        var itemCategory = $(parentDiv).find("td.ucategory").html();

        var allMsgBox = $('#userOperation .modal.deleteUser');

        $(allMsgBox).find('.modal-body p span.name').html(itemName);
        $(allMsgBox).find('.modal-body p span.email').html(itemEmail);

        allMsgBox.css('display', 'block');
        $('#userOperation .modal button.close').click(function () {
            allMsgBox.css('display', 'none');
            parentDiv = "";
        });
        $('#userOperation .modal #cancel').click(function () {
            allMsgBox.css('display', 'none');
            parentDiv = "";
        });
        $('#userOperation .modal #confirm').click(function () {
            alert("Why am I even here");
            var listedUser = {userid: selecteduserId, useraction: 'delete'};
            var deleteUserPost = $.post("users_delete_user.php", listedUser, function (data) {
            })
                    .done(function () {
                        alert(data);
                        $('#userOperation .modal.modal-danger').css('display', 'none').fadeOut(2000, "swing");
                        $(parentDiv).css('background-color', '#FCD1D1').fadeOut(2000, "swing", function () {
                            parentDiv.remove();
                        });

                    })
                    .fail(function () {
                        alert("Server Error, please check your internet connection");
                    })
                    .always(function () {
                        $('#updatedUsersList h3').html(itemName);
                        $('#updatedUsersList h5').html("With email " + itemEmail + ", was succesfully deleted");
                        $('#forexUsersListed').load("users_updated_list.php #forexUsersListed");
                    });
        });
        //return false;
    });

    $('.fa.fa-edit').click(function (evt) {
        var selecteduserId = $(this).parent().attr('id');
        var parentDiv = $(this).parents('tr');

        var itemName = $(parentDiv).find("td.uname").html();
        var itemEmail = $(parentDiv).find("td.uemail").html();
        var itemCategory = $(parentDiv).find("td.ucategory").html();

        var allMsgBox = $('#userOperation .modal.editUser');
        $(allMsgBox).find('input#usernameID').val(itemName);
        $(allMsgBox).find('input#useremailID').val(itemEmail);
        $(allMsgBox).find('input#usertypeID').val(itemCategory);

        allMsgBox.css('display', 'block');
        $('#userOperation .modal button.close').click(function () {
            allMsgBox.css('display', 'none');
            parentDiv = "";
        });
        $('#userOperation .modal #cancel').click(function () {
            allMsgBox.css('display', 'none');
            parentDiv = "";
        });
        $('#userOperation .modal #confirm').click(function () {
            var myDate = new Date();
            alert(myDate);
            var listedUser = {
                userid: selecteduserId,
                username: $(allMsgBox).find('input#usernameID').val(),
                useremail: $(allMsgBox).find('input#useremailID').val(),
                usertype: $(allMsgBox).find('input#usertypeID').val(),
                userdate: myDate,
                useraction: 'edit'
            };
            var editUserPost = $.post("users_edit_userupdate.php", listedUser, function (data) {
            })
                    .done(function () {
                        $('#userOperation .modal.editUser').css('display', 'none').fadeOut(2000, "swing");

                        $(parentDiv).css('border-left', 'solid 8px rgb(62, 174, 62)').css('color', 'rgb(62, 174, 62)');

                        $(parentDiv).find("td.uname").html(listedUser.username);
                        $(parentDiv).find("td.uemail").html(listedUser.useremail);
                        $(parentDiv).find("td.ucategory").html(listedUser.usertype);
                        $(parentDiv).find("td.udate").html(myDate);
                        
                    })
                    .fail(function () {
                        alert("Server Error, please check your internet connection");
                    })
                    .always(function () {
                        $('#updatedUsersList h3').html(itemName);
                        $('#updatedUsersList h5').html("With email " + itemEmail + ", was succesfully deleted");
                        $('#forexUsersListed').load("users_updated_list.php #forexUsersListed");
                    });
        });
    });
});

function addUser(data) {
    $('#sowedTest').load('samples.php #sowed2');
    alert("add user clicked");
    var url = 'user_register.php';
    $.post(url, data, success());
    alert("sowed");
    var url = "addlocation.php?name='sowed'";
    var msg = document.getElementById("userAddedSuccess");
    msg.style.display = "block";
}