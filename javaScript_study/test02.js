HashMap<String,String> k=new HashMap<String,String>();
k.put

대한민국 = 서울(Seoul)
미국 = 워싱턴(Washington)
일본 = 동경(Tokyo)
중국 = 북경(Beijing)


const main()=>{
	const n;
	do{
		printf("1. Korea\n");
		printf("2. USA\n");
		printf("3. Japan\n");
		printf("4. China\n");
		printf("number? ");
		scanf("%d",&n);
		printf("\n");
	switch(n){
		case 1:
			printf("Seoul");
			break;
		case 2:
			printf("Washington");
			break;
		case 3:
			printf("Tokyo");
			break;
		case 4:
			printf("Beijing");
			break;
		default:
			printf("none");
			break;
	}
	printf("\n\n");
	}while(n > 0 && n <= 4);
	
}