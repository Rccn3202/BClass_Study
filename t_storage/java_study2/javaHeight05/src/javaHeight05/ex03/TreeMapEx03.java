package javaHeight05.ex03;

import java.util.Map.Entry;
import java.util.NavigableSet;
import java.util.Set;
import java.util.TreeMap;

public class TreeMapEx03 {

	public static void main(String[] args) {
		TreeMap<String, String> tm = new TreeMap<String, String>();
        tm.put("������", "����ȣ");
        tm.put("ȫ����", "�谭��");
        tm.put("��ȹ��", "�迵��");
        
        //����ϱ�
        Set< Entry<String, String> > et = tm.entrySet();
        for( Entry<String, String> e : et) {
        	System.out.println( e.getKey() + " - " + e.getValue() );
        }
        System.out.println( "------------");
        //���� ����ϱ�
        NavigableSet<String> ns = tm.descendingKeySet();
        for( String key  : ns) {
        	System.out.println( key + " - " + tm.get(key) );
        }
	}

}