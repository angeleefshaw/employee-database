const mysql = require('mysql');
const inquirer = require('inquirer');
const { choices } = require('yargs');
const { allowedNodeEnvironmentFlags } = require('process');

// Connect to the ice_creamDB database using a localhost connection
const connection = mysql.createConnection({
  host: 'localhost',

  // Your port, if not 3306
  port: 3306,

  // Your MySQL username
  user: 'root',

  // Your MySQL password
  password: 'vb677797vbzxAs222888999',

  // Name of database
  database: 'employee_DB'
});

connection.connect((err) => {
  if (err) throw err;
  startApp();
  //console.log('connected as id ' + connection.threadId);
  //connection.end();
});

// connection.query("SELECT * FROM songs", function(err, res) {
//     if (err) throw err;
//     console.log(res);
// })

function startApp() {
    inquirer.prompt({
        name: 'select',
        type: 'list' ,
        message: 'What action would you like to take?',
        choices: [
            {name:'View all Employees', value: 0},
            {name:'View all Departments', value: 1},
            {name:'View all Employees by Manager', value: 2},
            {name:'View all Roles', value: 3},
            {name:'Add Employee', value:4},
            {name:'Delete Employee', value: 5},
            {name:'Add Role', value: 6},
            {name:'Update Employee Role', value: 7},
            {name:'Add Department', value: 8},
            {name:'Exit Program' , vlaue:9},
        ]
    }).then(function(answers) {
        if (answers.select === 0) {
            viewEmployees();
        }
        else if (answers.select === 1) {
            viewDepartment();
        }
        else if (answers.select === 2) {
            viewManagers();
        } 
        else if (answers.select === 3) {
            viewRole();
        } 
        else if (answers.select === 4) {
            addEmployee();
        }
        else if (answers.select === 5) {
            deleteEmployee();
        }
        else if (answers.select === 6) {
            addRole();
        }
        else if (answers.select === 7) {
            updateRole();
        }
        else if (answers.select === 8) {
            addDepartment();
        } 
        else if (answers.select === 9) {
            //connection.end()
            //console.log('Goodbye!')
        } 
    })
};

function viewEmployees() {
    var query = "SELECT * FROM employee";
    connection.query(query, function(err, res) {
        for (var i=0; i< res.length; i++) {
            console.log(res[i]);
        }
    });

    startApp();
}

function viewDepartment() {
    var query = "SELECT * FROM department";
    connection.query(query, function(err, res) {
        for (var i=0; i< res.length; i++) {
            console.log(res[i]);
        }
  })
  startApp();
}

function viewManagers() {
    var query = "SELECT * FROM songs"
    //connection.query...
}

function viewRole() {
    var query = "SELECT * FROM roles"
    connection.query(query, function(err, res) {
        for (var i=0; i< res.length; i++) {
            console.log(res[i]);
        }
    })
    startApp();
}

function addEmployee() {
    var query = "SELECT * FROM songs"
    //connection.query...
}

function deleteEmployee() {
    var query = "SELECT * FROM songs"
    //connection.query...
}

function addRole() {
    var query = "SELECT * FROM songs"
    //connection.query...
}

function updateRole() {
    var query = "SELECT * FROM songs"
    //connection.query...
}

function addDepartment() {
    var query = "SELECT * FROM songs"
    //connection.query...
}
