export const TypeEx01=()=>{
    const ex = ()=>{
        let str:string="A";
        str="B";
        //str=100;
        let num: number=0;
        num = 10;
        //num = "10";
        let bool: boolean=false;
        bool=true;
        bool=false;
        const arr1: Array<number>=[0,1,2];
        arr1[0]=10;
        console.log(arr1);
        let n:null=null;
        n=null;
        //n-10;
        let u:undefined=undefined;//무슨형인지 아직 안정해짐
        u=undefined;
        //u=null;
        let a:any; //모든 형을 다 넣을 수 있음
        a=undefined;
        a=null;
        a=true;
        a=10;
        a="A";
        funA(10);
        //funA("10"); 아래에 명시된 funA의 자료형은 문자가 아니므로 안됨
        // funA(); ()인수가 없다
        const r=funA(100);

    }

    const funA=(num:number):void=>{

        console.log(num);
    }

    const obj:{str:string,num:number}={
        str:"A",
        num:10
    }

    const obj1:{str:string} & {num:number}={
        str:"A",
        num:10
        
    }
    //obj2는 string타입도 되고 number타입도 되고
    let obj2:{str:string} | {num:number}={
        obj2="A";
        obj2=10;
    }

    return(
        <>
        {ex}
        </>
    );
}