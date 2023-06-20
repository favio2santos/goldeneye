<!DOCTYPE html>  
<html lang="en">  
    <head>
        <meta charset="UTF-8">
        <title>Goldeneye</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body class="row justify-content-center">
        <div class="col-auto bg-success rounded m-2 text-white">
            <div class="m-3">
                <div class="text-center">
                    <h1>Goldeneye</h1>
                    <p>Fill in the fields to generate your e-mail!</p>
                </div>
                <form action="/getEmail">
                    <div class="form-group pb-2">
                        <label for="firstName">First Name: </label>
                        <input class="form-control" type="text" name="firstName" id="firstName" required>
                    </div>
                    <div class="form-group pb-2">
                        <label for="surname">Surname: </label>
                        <input class="form-control" type="text" name="surname" id="surname" required>
                    </div>
                    <div class="pb-2">
                        <label for="office">Office: </label>
                        <select name="office" id="office" class="form-select" onchange="updateDepartment()" required>
                            <option value="" selected disabled>Select an office</option>
                            <option value="milan">Milan</option>
                            <option value="spain">Spain</option>
                            <option value="newyork">New York</option>
                        </select>
                    </div>
                    <div class="pb-2" id="dept" hidden>
                        <label for="department">Department: </label>
                        <select name="department" id="department" class="form-select" required></select>
                    </div>
                    <div class="row justify-content-center mt-2">
                        <button type="submit" class="col-auto btn btn-primary rounded">Generate</button>
                    </div>
                </form>
            </div>
        </div>

        <script>
            const departments = {
                milan: ['Design', 'Business', 'Advertising'],
                spain: ['Research & development', 'Business'],
                newyork: ['Business', 'Advertising']
            };

            function updateDepartment() {
                const office = document.getElementById('office');
                const department = document.getElementById('department');
                const dept = document.getElementById('dept');
                dept.hidden = false;
                const selectedOffice = office.value;


                // Limpiar las opciones existentes
                department.innerHTML = '';

                // Crear nuevas opciones
                departments[selectedOffice].forEach(function (dept) {
                    const option = document.createElement('option');
                    option.text = dept;
                    department.add(option);
                });
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>