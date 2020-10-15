import java.util.*;
public class Banking 
{
	Scanner sc=new Scanner(System.in);
	String name;
	int balance=0;
	int amount=0;
	int account_no;
	int mobile;
	char ch;
	void createAccount()
	{
		System.out.println("ENTER your name");
		name=sc.next();
		System.out.println("ENTER MOBILE NO");
		mobile=sc.nextInt();
		Random rand = new Random();
		account_no = rand.nextInt(40);
		System.out.println("account no is "+account_no);
		System.out.println("** account creating minimum balance is 500 rs");
		System.out.println("DO you like to continue");
		ch=sc.next().charAt(0);
		if(ch=='y'||ch=='Y')
		{
			balance=amount+500;
			System.out.println("your balance is "+balance);
		}
		else
		{
			System.exit(0);
		}
		
	}
	void checkBalance()
	{
            System.out.println("enter account no");
					int acc=sc.nextInt();
					System.out.println("ENTER mobile no");
					int mob=sc.nextInt();
					if(account_no==acc && mobile==mob)
					{
						System.out.println("your BALANCE is "+balance);
					}
					
					else
					{
						System.out.println("incorrect entry");
					}
		
	}
	void depositeMoney()
	{  
              System.out.println("enter account no");
					int acc=sc.nextInt();
					System.out.println("ENTER mobile no");
					int mob=sc.nextInt();
					if(account_no==acc && mobile==mob)
					{
						System.out.println("enter amount to be added");
                                                amount=sc.nextInt();
                                                
					balance=balance +amount;	
						System.out.println("your BALANCE is "+balance);
					}
					else
					{
						System.out.println("account is not verify");
					}
		
	}
	void withdrawlMoney()
	{
		System.out.println("enter account no");
					int acc=sc.nextInt();
					System.out.println("ENTER mobile no");
					int mob=sc.nextInt();
					if(account_no==acc && mobile==mob)
					{
						System.out.println("enter amount withdrawl");
                                                amount=sc.nextInt();
                                              if(balance -amount>500)  
                                              {
                                                  balance=balance -amount;	
						System.out.println("your BALANCE is "+balance);
                                              }
                                              else
                                              {
                                                  System.out.println("Minium 500 balace is required");
                                              } 
					}
					else
					{
						System.out.println("account is not verify");
					}
		
	}

	public static void main(String[] args) 
	{
		Scanner sc=new Scanner(System.in);				//2 scanners
		Banking B = new Banking();		//object B
		// TODO Auto-generated method stub
		do			//exit control loop
		{
		System.out.println("WELCOME TO BANK 10SR");
		System.out.println("CHOOSE YOUR CHOICE");
		System.out.println("1. CREATE account");
		System.out.println("2. CHECK BALANCE");
		System.out.println("3. DEPOSIT MONEY");
		System.out.println("4. WITHDAWL Money");
		int choice=sc.nextInt();
		
		switch(choice)
		{
			case 1 :
				{
					B.createAccount();
				}	
			break;
			case 2 :
				{
					B.checkBalance();
				}
				break;
			case 3 :
				{
                                    B.depositeMoney();
					
				}
				break;
			case 4 :
				{
				     B.withdrawlMoney();  
				}
				break;
				default:
				{
					System.out.println("YOU ENTERED THE WRONG CHOICE");
				}
				
		}
		System.out.println(" DO YOU WANT TO CONTINUE");
		B.ch=sc.next().charAt(0);
		//sc.close();
		}while(B.ch=='y'||B.ch=='Y');
		System.out.println("out of while loop");
	}
}