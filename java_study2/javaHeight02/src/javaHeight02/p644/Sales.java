package javaHeight02.p644;

public class Sales {
	   
	   private String saleDate; //��������
	   private String code; //�ŷ�ó�ڵ�
	   private String location; //��������
	   private int saleAmount; // �Ǹŷ�
	   private int saleMoney; //����ݾ�
	   private String phone; //����ó
	   
	   // ������
	   public Sales(String saleDate, String code, String location, int saleAmount, int saleMoney, String phone) {
	      this.saleDate = saleDate;
	      this.code = code;
	      this.location = location;
	      this.saleAmount = saleAmount;
	      this.saleMoney = saleMoney;
	      this.phone = phone;
	   }

	   // ���ͼ���
	   public String getSaleDate() {
	      return saleDate;
	   }

	   public void setSaleDate(String saleDate) {
	      this.saleDate = saleDate;
	   }

	   public String getCode() {
	      return code;
	   }

	   public void setCode(String code) {
	      this.code = code;
	   }

	   public String getLocation() {
	      return location;
	   }

	   public void setLocation(String location) {
	      this.location = location;
	   }

	   public int getSaleAmount() {
	      return saleAmount;
	   }

	   public void setSaleAmount(int saleAmount) {
	      this.saleAmount = saleAmount;
	   }

	   public int getSaleMoney() {
	      return saleMoney;
	   }

	   public void setSaleMoney(int saleMoney) {
	      this.saleMoney = saleMoney;
	   }

	   public String getPhone() {
	      return phone;
	   }

	   public void setPhone(String phone) {
	      this.phone = phone;
	   }
	   
	   

	}