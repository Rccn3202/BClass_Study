package javaHeight02.p643;

import java.util.ArrayList;
import java.util.List;

public class ArrayListEx {

	public static void main(String[] args) {
		
		List<Board> boardList1=new ArrayList<Board>();//<Borad��� Ŭ������ ��ڴ�>
		//���׸� ���� �����ѵ� �� �ȵ���?
		boardList1.add(new Board("����","�� �Ϳ�","ȫ�浿","0220"));
		boardList1.add(new Board("����","��","��赿","0120"));
		boardList1.add(new Board("����������","�Ӥ�","������","dfsa"));
		
		for(int i=0;i<boardList1.size();i++) {
			System.out.println(boardList1.get(i).getSubject());
		}

		
		System.out.println("-------------------------");
		//�Խ��� ���� "����"�̶�� ���� �� ����� �̸��� �ۼ��� �˻�
		for(int i=0;i<boardList1.size();i++) {
	    	
			if(boardList1.get(i).getSubject().equals("����")) {
				System.out.println(boardList1.get(i).getWriter());
				System.out.println(boardList1.get(i).getJoindate());
			};
		}
		System.out.println("--�ۼ����� 0220 ���� �Խñ� ����� ����----");
		for(int j=0;j<boardList1.size();j++){
			if(boardList1.get(j).getJoindate().equals("0220")) {
				System.out.println(boardList1.get(j).getSubject());
				System.out.println(boardList1.get(j).getContent());
			}
		}
	
}
}
