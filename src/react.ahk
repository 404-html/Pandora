::rclass::
Var = 
(
import React, { Component } from 'react';

export default class test extends Component {
	constructor (props) {
		super(props);
	}

	state = {
		color: 'blue'
	}

	componentDidMount () {
		console.log(this.state.color);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div style={{width: 500, height: 500}} onClick={this.handleSubmit}>test {this.state.color}</div>
		`)
	}
}
)
code(Var)
return

::rcomponents::
::rcomponent::
::rcmp::
::rmp::
Var = 
(
import React, { Component } from 'react';
// array, bool, func, number, object, string, symbol, node, element
import PropTypes from 'prop-types';

export default class test extends Component {

	static propTypes = {
		className: PropTypes.string,
		defaultActiveKey: PropTypes.string,
		onTabChange: PropTypes.func,
		onSubmit: PropTypes.func,
	};

	static defaultProps = {
		className: '',
		defaultActiveKey: '',
		onTabChange: () => {},
		onSubmit: () => {},
	};

	constructor (props) {
		super(props);
	}

	state = {
		color: 'blue'
	}

	componentDidMount () {
		console.log(this.state.color);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div  style={{width: 500, height: 500}} onClick={this.handleSubmit}>test {this.state.color}</div>
		`)
	}
}
)
code(Var)
return

::rmodel::
::rmodels::
::dva-model::
::dva-models::
::dva.model::
::dva.models::
Var = 
(
/**
 * һ��index.js ����ʾ��
    handleClick () {
        const { dispatch } = this.props
        dispatch({ type: 'todo/save' }
    }

    ����async func ʾ��
    export async function saveTodoToServer(codetype) {
        return request(`/api/framework/sys/code/list?codetype=` + codetype);
    }
 */

export default {
	namespace: 'todo',

	state: {}, // Ҳ���������飺 []

	effects: {
		*save({ payload, callback }, { put, call }) {
	      // ���� async func saveTodoToServer
	      yield call(saveTodoToServer, todo);
          // ���� reducers ���� state �������ɴ����κβ��������뱣��type
	      yield put({ type: 'add', title: payload.title, text: payload: text, time: payload: time });
	    },
	},

	reducers: {
		// �Ƚ��Ƽ�es6������д��add(state, { title, text, time })
	    add(state, action) {
	      const title = action.title
          const text = action.text
          const todo = { 
              title: action.title, 
              text: action.text, 
              time: action.time 
          }
	      // �������ݵ� state
	      return {...state, todo};
	    },
  	},
}
)
code(Var)
return

::rhtml::
Var = 
(
<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<script src="https://cdn.bootcss.com/react/16.4.0/umd/react.production.min.js"></script>
	<script src="https://cdn.bootcss.com/react-dom/16.4.0/umd/react-dom.production.min.js"></script>
	<!-- babel6.0�����Ѿ���֧����������� -->
	<script src="https://cdn.bootcss.com/babel-core/5.8.38/browser.min.js"></script>
	<title>Document</title>
</head>
<style>
</style>
<body>
	<div id="app"></div>

	<div id="navbar"></div>

	<div id="Welcome"></div>
</body>

<!-- �����ʶΪ type="text/babel" -->
<script type="text/babel">
    ReactDOM.render(
      <h1>Hello, world!</h1>,
      document.getElementById('app')
	`);

	var nav_li=['���µ�Ӱ', '��������'];
    ReactDOM.render(
	     <ul>
	     {
	         nav_li.map(function(item){
	             return <li><a href='#'>{item}</a></li>;
	         })
	     }
	     </ul>,
	     document.getElementById('navbar')
    `)


    class Welcome extends React.Component {
      render() {
        return <h1>Hello, {this.props.name}</h1>;
      }
    }
    ReactDOM.render(
      <Welcome name="Sara"/>,
      document.getElementById('Welcome')
    `);
</script>
</html>
)
code(Var)
return

::rconnect::
::dva.connect::
::dva-connect::
::react-connect::
::react.connect::
Var = 
(
// �� model �� component ��������
export default connect(({ user, login, global = {}, loading }) => ({
	currentUser: user.currentUser,
	menuData: login.menuData,
	notices: global.notices,
	fetchingNotices: loading.effects['global/fetchNotices'],
}))(BasicLayout);
)
code(Var)
return


::@connect::
Var = 
(
@connect(({ user, login, global = {}, loading }) => ({
  currentUser: user.currentUser,
  menuData: login.menuData,
  notices: global.notices,
  fetchingNotices: loading.effects['global/fetchNotices'],
}))

export default class BasicLayout extends React.PureComponent { 
   // ...
}
)
code(Var)
return