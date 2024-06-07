async function delayPrint(...args) {
    await setTimeout(() => {
      for (let i = 0; i < args.length; i++) {
        console.log(args[i] + "\r");
      }
      console.log("完成");
    }, 5000);
    console.log("异步操作");
  }
  
  delayPrint(1,2,3,4,5,6,7,8,9,0)


  