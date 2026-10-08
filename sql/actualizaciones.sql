USE BancolombiaBD;
GO

-- 1. ACTUALIZAR 2 REGISTROS DE LA TABLA CARGO

UPDATE CARGO
SET descripcion = 'Cajero Principal'
WHERE codCar = 1;

UPDATE CARGO
SET descripcion = 'Gerente de Sucursal'
WHERE codCar = 2;

-- 2. ACTUALIZAR 2 REGISTROS DE LA TABLA SUCURSAL

UPDATE SUCURSAL
SET nombre = 'Sucursal Centro Principal'
WHERE codSuc = 1;

UPDATE SUCURSAL
SET nombre = 'Sucursal El Poblado Principal'
WHERE codSuc = 2;

-- 3. ACTUALIZAR 2 REGISTROS DE LA TABLA TIPO

UPDATE TIPO
SET Descripcion = 'Consignacion Bancaria'
WHERE Codigo = 1;

UPDATE TIPO
SET Descripcion = 'Retiro de Efectivo'
WHERE Codigo = 2;

-- 4. ACTUALIZAR 2 REGISTROS DE LA TABLA CLIENTE

UPDATE CLIENTE
SET Direccion = 'Calle 15 # 10-25'
WHERE cedula = 1001001001;

UPDATE CLIENTE
SET ciudad = 'Cali'
WHERE cedula = 1001001002;

-- 5. ACTUALIZAR 2 REGISTROS DE LA TABLA EMPLEADO

UPDATE EMPLEADO
SET Salario = 3000000
WHERE codEmp = 1;

UPDATE EMPLEADO
SET nombre2 = 'Alejandro'
WHERE codEmp = 2;

-- 6. ACTUALIZAR 2 REGISTROS DE LA TABLA CUENTA

UPDATE CUENTA
SET Saldo = 4000000
WHERE numCuenta = 1000000001;

UPDATE CUENTA
SET Saldo = 6000000
WHERE numCuenta = 1000000002;

-- 7. ACTUALIZAR 2 REGISTROS DE LA TABLA CREDITO

UPDATE CREDITO
SET montoPrestado = 16000000
WHERE numCred = 2000000001;

UPDATE CREDITO
SET saldoPendiente = '9000000'
WHERE numCred = 2000000002;

-- 8. ACTUALIZAR 2 REGISTROS DE LA TABLA SERVICIO

UPDATE SERVICIO
SET nomServ = 'Seguro de Vida Familiar'
WHERE codServ = 1;

UPDATE SERVICIO
SET saldoPendiente = 25000
WHERE codServ = 2;

-- 9. ACTUALIZAR 2 REGISTROS DE LA TABLA TRANSACCION

UPDATE TRANSACCION
SET monto = 600000
WHERE codTrans = 1001;

UPDATE TRANSACCION
SET monto = 850000
WHERE codTrans = 1002;

-- 10. ACTUALIZAR 2 REGISTROS DE LA TABLA CLIENTE__EMPLEADO

UPDATE CLIENTE__EMPLEADO
SET fechaAtencion = '2025-01-20'
WHERE cedulaCliente = 1001001001
AND codEmpleado = 1;

UPDATE CLIENTE__EMPLEADO
SET fechaAtencion = '2025-01-25'
WHERE cedulaCliente = 1001001002
AND codEmpleado = 2;



-- 11. TABLA CLIENTE_SERVICIO
-- No se realizan UPDATE debido a que sus dos columnas
-- corresponden a claves foráneas que relacionan CLIENTE
-- y SERVICIO. No posee atributos propios modificables.


-- 12. TABLA CUENTA_EMPLEADO
-- No se realizan UPDATE debido a que sus dos columnas
-- corresponden a claves foráneas que relacionan CUENTA
-- y EMPLEADO. No posee atributos propios modificables.

-- 13. ACTUALIZAR 2 REGISTROS DE LA TABLA CUENTA_TRANSACCION

UPDATE CUENTA_TRANSACCION
SET fechaHora = '2025-01-11 10:30:00'
WHERE numCuenta = 1000000001
AND codTrans = 1001;

UPDATE CUENTA_TRANSACCION
SET fechaHora = '2025-01-16 11:45:00'
WHERE numCuenta = 1000000002
AND codTrans = 1002;

GO