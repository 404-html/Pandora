Function.prototype.after = function(fn) {
    var self = this;
    /**
	 * ��֪1������� function ��ִ�����Ρ�Ϊʲô������ʾ������after��
	 * ��֪2����������� arguments ����order��������Ρ�Ϊʲô������ʾ��return function(){}��
	 */
    return function() {
        var ret = self.apply(this, arguments);  
        if (ret === 'next') {
            return fn.apply(this.arguments);
        }
    }
}

var order500yuan = function(orderType, pay, stock) {
    if (orderType === 1 && pay === true) {
        console.log('500 Ԫ����Ԥ�����õ� 100 �Ż�ȯ');
    } else {
        return 'next'; // �Ҳ�֪����һ���ڵ���˭�����������������洫��
    }
};

var order200yuan = function(orderType, pay, stock) {
    if (orderType === 2 && pay === true) {
        console.log('200 Ԫ����Ԥ�����õ� 50 �Ż�ȯ');
    } else {
        return 'next'; // �Ҳ�֪����һ���ڵ���˭�����������������洫��
    }
};

var orderNormal = function(orderType, pay, stock) {
    if (stock > 0) {
        console.log('��ͨ�������Ż�ȯ');
    } else {
        console.log('�ֻ���治��');
    }
};

var order = order500yuan.after( order200yuan ).after( orderNormal );
order( 1, true, 500 )
order( 2, true, 500 );
order( 1, false, 500 );