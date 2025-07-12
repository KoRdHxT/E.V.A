<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>prueba crud</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/14c1c8bf54.js" crossorigin="anonymous"></script>
</head>

<body>
    <h1 clss="text-center-p3">picha</h1>
    <div clss=container-fluid row>
        <form clss="col-4">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb p-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <div class="col-8 p-4"></div>
        <table class="table">
            <thead class="bg-green">
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">nombre</th>
                    <th scope="col">apellido</th>
                    <th scope="col">correo</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <?php
                include"conexion/conexion.php";
                $sql= $mysqli->query(" select * from usuario");
                while ($datos=$sql->fetch_object()){?>
                 <tr>

                    <td><?= $datos-> id  ?></td>
                    <td><?= $datos-> nombre ?></td>
                    <td><?$datos-> apellido ; ?></td>
                    <td><?$datos-> correo ?></td>
                    <td>
                  <a href="" class="btn btn-small btn-warning"><i class="fa-solid fa-user-pen"></i></a>
                  <a href="" class="btn btn-small btn-danger"><i class="fa-solid fa-user-xmark"></i></a>
                    </td>
                </tr>
            
            <?php
            }
                ?>
               

                
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>

</html>