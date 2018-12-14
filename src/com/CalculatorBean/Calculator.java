package com.CalculatorBean;

import java.math.BigDecimal;


public class Calculator {
	private String  firstnum="0.0" ;
	private String  secondnum="0.0" ;
	private String  ans;
	private char operator = '+';

	public String getFirstnum() {
		return firstnum;
	}

	public void setFirstnum(String firstnum) {
		this.firstnum = firstnum;
	}

	public String getSecondnum() {
		return secondnum;
	}

	public void setSecondnum(String secondnum) {
		this.secondnum = secondnum;
	}

	public char getOperator() {
		return operator;
	}

	public void setOperator(char operator) {
		this.operator = operator;
	}

	public void calculate() {
		BigDecimal first=new BigDecimal(this.firstnum);
		BigDecimal second=new BigDecimal(this.secondnum);
		switch (this.operator) {
		case '+':
			this.ans = first.add(second).toString();
			break;
		case '-':
			this.ans = first.subtract(second).toString();
			break;
		case '*':
			this.ans = first.multiply(second).toString();
			break;
		case '/':
			if(second.doubleValue()==0){
				throw new RuntimeException("除数不能为0");
			}
			else {
				this.ans=first.divide(second, 20,BigDecimal.ROUND_HALF_DOWN).toString();
			}
			break;
		default:
			this.ans = first.add(second).toString();
		}
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}

}
