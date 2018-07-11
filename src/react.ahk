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
		console.log(arguments);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div onClick={this.handleSubmit}>test</div>
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
		console.log(arguments);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div onClick={this.handleSubmit}>test</div>
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
export default {
	namespace: 'todo',

	state: {}, // Ҳ���������飺 []

	effects: {
		*save({ payload, callback }, { put, call }) {
	      // ���� saveTodoToServer���ɹ��󴥷� `add` action ���浽 state
	      yield call(saveTodoToServer, todo);
	      yield put({ type: 'add', payload: todo });
	    },
	},

	reducers: {
		// Ҳ��������д��add(state, { payload: todo })
	    add(state, action) {
	      const todo = action.payload
	      // �������ݵ� state
	      return {...state, todo};
	    },
  	},
}
)
code(Var)
return