!p::
	; def ����
	Menu, def1, Add, Item1, PythonHandler
	Menu, def1, Add, Item2, PythonHandler

	; List �б�
	Menu, List1, Add, Item1, PythonHandler
	Menu, List1, Add, Item2, PythonHandler

	; dict �ֵ�
	Menu, dict1, Add, Item1, PythonHandler
	Menu, dict1, Add, Item2, PythonHandler

	; class ��
	Menu, class1, Add, Item1, PythonHandler
	Menu, class1, Add, Item2, PythonHandler

	; package ģ��
	Menu, package1, Add, Item1, PythonHandler
	Menu, package1, Add, Item2, PythonHandler

	; range ����
	Menu, range1, Add, Item1, PythonHandler
	Menu, range1, Add, Item2, PythonHandler

	; os ģ��
	Menu, os1, Add, Item1, PythonHandler
	Menu, os1, Add, Item2, PythonHandler

	; __ħ������__
	Menu, magic1, Add, Item1, PythonHandler
	Menu, magic1, Add, Item2, PythonHandler

	; try �쳣����
	Menu, try1, Add, Item1, PythonHandler
	Menu, try1, Add, Item2, PythonHandler

	; ���� / �﷨����
	Menu, other1, Add, Item1, PythonHandler
	Menu, other1, Add, Item2, PythonHandler

	Menu, PythonMenu, Add, def ����, :def1
	Menu, PythonMenu, Add, List �б�, :List1
	Menu, PythonMenu, Add, dict �ֵ�, :dict1
	Menu, PythonMenu, Add, class ��, :class1
	Menu, PythonMenu, Add, package ģ��, :package1
	Menu, PythonMenu, Add, range ����, :range1
	Menu, PythonMenu, Add, os ģ��, :os1
	Menu, PythonMenu, Add, __ħ������__, :magic1
	Menu, PythonMenu, Add, try �쳣����, :try1
	Menu, PythonMenu, Add, ���� / �﷨����, :other1
	
	Menu, PythonMenu, Show
	Menu, PythonMenu, DeleteAll
return

PythonHandler:
	MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
return

