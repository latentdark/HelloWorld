//모듈을 추출
var express = require('express')
  , routes = require('./routes')
  , user = require('./routes/user')
  , http = require('http')
  , path = require('path');

var mysql = require('mysql');

var db_config = {
	//host : 'latentdark.cafe24.com',
	host : '119.205.211.167',
	port : 3306,
	user : 'latentdark',
	password : 'WeAre47thDB',
	//database : 'latentdark'
	database : 'market',
	insecureAuth: true
};

var connection;

function handleDisconnect() {
  connection = mysql.createConnection(db_config); // Recreate the connection, since
                                                  // the old one cannot be reused.

  connection.connect(function(err) {              // The server is either down
    if(err) {                                     // or restarting (takes a while sometimes).
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000); // We introduce a delay before attempting to reconnect,
    }else{
		console.log('mysql connect success!');
	}                                     // to avoid a hot loop, and to allow our node script to
  });                                     // process asynchronous requests in the meantime.
                                          // If you're also serving http, display a 503 error.
  connection.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
      handleDisconnect();                         // lost due to either server restart, or a
    } else {                                      // connnection idle timeout (the wait_timeout
      throw err;                                  // server variable configures this)
    }
  });
}

handleDisconnect();

/*
var connection = mysql.createConnection({
	//host : 'latentdark.cafe24.com',
	host : '119.205.211.167',
	port : 3306,
	user : 'latentdark',
	password : 'WeAre47thDB',
	//database : 'latentdark'
	database : 'market',
	insecureAuth: true
});

connection.connect(function(err){
	if(err){
		console.error('mysql connection error');
		console.error(err);
		throw err;
	}else{
		console.log('mysql connect success!');
	}
});
*/
//서버 생성
var app = express();

//미들웨어 설정
//서버를 설정(공통설정)
app.set('port', process.env.PORT || 3000);
app.set('views', __dirname + '/views');
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(express.cookieParser('your secret here'));
app.use(express.session());
app.use(express.bodyParser());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

//서버설정(개발모드)
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

//라우트
app.get('/node.js/signupForm', routes.index);

//서버 실행
http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});

//app.get('/test/:email', function(req,res){
app.get('/duplicateCheck/:email', function(req,res){
	//var user = { 'email':req.body.email };
	//var url=require('url');
	//url.parse(req.params);
	//var temp = {':email':req.params.email};
	var temp= req.params.email;
	var email =temp.substr(7,temp.length);
	//var email = req.params.email;
	//console.log('디버그'+temp);
	console.log('디버그'+email);
    var query = connection.query('select email from user where email = ?',email,function(err,rows){
        console.log(rows);
        res.json(rows);
    });
    //console.log('______Debug______');
    //console.log(query);
    //console.log('______Debug______');
});

app.get('/duplicateCheck2/:nickname', function(req,res){
	//var user = { 'email':req.body.email };
	//var url=require('url');
	//url.parse(req.params);
	//var temp = {':email':req.params.email};
	var temp= req.params.nickname;
	var nickname =temp.substr(10,temp.length);
	//var email = req.params.email;
	//console.log('디버그'+temp);
	console.log('디버그'+nickname);
    var query = connection.query('select nickname from user where nickname = ?',nickname,function(err,rows){
        console.log(rows);
        res.json(rows);
    });
    //console.log('______Debug______');
    //console.log(query);
    //console.log('______Debug______');
});


//insert
app.post('/addUser',function(req,res){
	
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth();
	var day = now.getDate();
	var date = year+'-'+month+'-'+day;
	
	/*
	var email;
	var phoneNumber;
	
	if(req.body.email!=null){
		email = req.body.email;
	}else{
		email = null;
	}
	
	if(req.body.phoneNumber!=null){
		phoneNumber = req.body.phoneNumber;
	}else{
		phoneNumber = null;
	}
	*/
	
    var user = {'email':req.body.email,
                'password':req.body.password,
                'nickname':req.body.nickname,
                'phone_number':req.body.phoneNumber,
                'date':date};
    var query = connection.query('insert into user set ?',user,function(err,result){
        if (err) {
            console.error(err);
            throw err;
        }
        console.log(query.sql);
        console.log(query.values);
        res.redirect('http://192.168.200.56:8080/signupSubmit');
        //res.send(200,'success');
    });
});


//select email
app.post('/checkemail', function(req,res){
	var user = { 'email':req.body.email };
	
    var query = connection.query('select email from user where ?',user,function(err,rows){
        console.log(rows);
        res.json(rows);
    });
    console.log(query);
});

//select nickname
app.post('/checknickname', function(req,res){
	var user = { 'nickname':req.body.nickname };
	
    var query = connection.query('select nickname from user where ?',user,function(err,rows){
        console.log(rows);
        res.json(rows);
    });
    console.log(query);
});